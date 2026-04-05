#!/usr/bin/env python3

import argparse
import json
import re
import sys
from datetime import datetime
from pathlib import Path

try:
    from jinja2 import Environment, StrictUndefined
except ImportError:
    sys.exit("pip install jinja2")


NEW_HIGHLIGHTS_MARKER = "<!-- koreader-highlights -->"
OUTPUT_DIR = Path(
    "/home/chris/.local/share/notes/zettlekasten/literature/highlights"
).expanduser()

DEFAULT_TEMPLATE = """\
---
title: "{{ title }}"
author: "{{ author }}"
pages: {{ pages }}
started: {{ created_on }}
imported: {{ imported_date }}
tags: [literature, unfiled, highlights]
up: "[[literature]]"
---

# {{ title }}
*{{ author }}*

<!-- koreader-highlights -->

## Highlights

{% set ns = namespace(current_chapter='') %}
{% for h in highlights -%}
{% if h.chapter and h.chapter != ns.current_chapter -%}
### {{ h.chapter }}
{% set ns.current_chapter = h.chapter %}
{% endif -%}
- [ ] {{ h.text }}{% if h.note %}
    - 🗒 *{{ h.note }}*{% endif %}
    - p. {{ h.page }}{% if h.time %} · {{ h.time }}{% endif %}

{% endfor %}
---
*{{ highlight_count }} highlight(s) · imported {{ imported_date }}*
"""


def parse_koreader_json(json_path: Path) -> dict:
    data = json.loads(json_path.read_text(encoding="utf-8"))

    highlights = []
    for entry in data.get("entries", []):
        if entry.get("sort") == "bookmark" and not entry.get("text"):
            continue
        text = (entry.get("text") or "").strip()
        if not text:
            continue
        note = (entry.get("notes") or entry.get("note") or "").strip()
        highlights.append(
            {
                "text": text,
                "note": note if note != text else "",
                "page": entry.get("page", ""),
                "chapter": entry.get("chapter", ""),
                "color": entry.get("color", ""),
                "time": datetime.fromtimestamp(entry["time"]).strftime("%Y-%m-%d")
                if entry.get("time")
                else "",
            }
        )

    title = data.get("title", json_path.stem)
    author = data.get("author", "")

    return {
        "title": title,
        "author": author,
        "safe_title": re.sub(r'[/:*?"<>|\\,\n]', "_", title)
        .strip()
        .replace(" ", "-")
        .lower(),
        "pages": data.get("number_of_pages", ""),
        "created_on": datetime.fromtimestamp(data["created_on"]).strftime("%Y-%m-%d")
        if data.get("created_on")
        else "",
        "md5": data.get("md5sum", ""),
        "highlights": highlights,
        "highlight_count": len(highlights),
        "source_file": json_path.name,
        "imported_date": datetime.now().strftime("%Y-%m-%d"),
        "imported_time": datetime.now().strftime("%H:%M"),
    }


def write_note(context: dict, out_dir: Path, template_str: str):
    env = Environment(undefined=StrictUndefined)
    tmpl = env.from_string(template_str)
    rendered = tmpl.render(**context)

    out_path = out_dir / f"{context['safe_title']}.md"

    if out_path.exists():
        existing = out_path.read_text()
        if NEW_HIGHLIGHTS_MARKER in existing:
            before = existing.split(NEW_HIGHLIGHTS_MARKER)[0]
            after = (
                rendered.split(NEW_HIGHLIGHTS_MARKER, 1)[-1]
                if NEW_HIGHLIGHTS_MARKER in rendered
                else ""
            )
            out_path.write_text(before + NEW_HIGHLIGHTS_MARKER + after)
            print(f"  updated  {out_path.name}")
            return
    out_path.write_text(rendered)
    print(f"  created  {out_path.name}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("input", help="JSON file or directory of JSON files")
    ap.add_argument("--template", help="Path to .j2 template (optional)")
    args = ap.parse_args()

    out_dir = OUTPUT_DIR
    out_dir.mkdir(parents=True, exist_ok=True)

    template_str = (
        Path(args.template).read_text() if args.template else DEFAULT_TEMPLATE
    )

    source = Path(args.input)
    json_files = [source] if source.is_file() else list(source.glob("*.json"))

    for jf in json_files:
        ctx = parse_koreader_json(jf)
        if not ctx["highlights"]:
            print(f"  skipping {jf.name} — no highlights")
            continue
        print(f"  {ctx['title']} ({ctx['highlight_count']} highlights)")
        write_note(ctx, out_dir, template_str)


if __name__ == "__main__":
    main()
