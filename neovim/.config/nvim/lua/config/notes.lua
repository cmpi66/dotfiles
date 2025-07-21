-- ~/.config/nvim/lua/config/notes.lua

local M = {}

-- Generate random ID prefix (e.g., ab12cd)
local function random_id()
  local charset = "abcdefghijklmnopqrstuvwxyz0123456789"
  local id = {}
  for _ = 1, 4 do
    local r = math.random(#charset)
    table.insert(id, charset:sub(r, r))
  end
  return table.concat(id)
end

-- Append note link to a section in a landing file
local function append_link_to_section(filepath, section_header, link_line)
  local lines = {}
  local file = io.open(filepath, "r")
  local found = false
  local inserted = false

  if file then
    for line in file:lines() do
      table.insert(lines, line)

      if found and not inserted and line:match("^%[%[.*%]%]") == nil and line:match("^%s*$") then
        table.insert(lines, link_line)
        inserted = true
      end

      if line:lower():match("^##%s+" .. section_header:lower()) then
        found = true
      end
    end
    file:close()
  end

  if not inserted then
    table.insert(lines, "\n## " .. section_header)
    table.insert(lines, link_line)
  end

  local out = io.open(filepath, "w")
  for _, l in ipairs(lines) do
    out:write(l .. "\n")
  end
  out:close()
end

-- Create a new note with random ID and optional indexing
function M.new_note(dir)
  local title = vim.fn.input("Title: ")
  if title == "" then
    return
  end

  local id = random_id()
  local safe_title = title:gsub("[^%w%s%-]", ""):gsub("%s+", "-"):lower()
  local filename = id .. "-" .. safe_title .. ".md"
  local path = vim.fn.expand(dir .. "/" .. filename)

  -- Create file and open it
  vim.cmd("e " .. path)

  -- Optional: insert tag frontmatter
  local tag = vim.fn.fnamemodify(dir, ":t")
  local lines = {
    "---",
    "tags: [" .. tag .. "]",
    "---",
    "",
    "# " .. title,
    "",
  }
  vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)

  -- Determine section file for indexing
  local section_file = ""
  local section_header = "links"
  if tag == "fleeting" then
    section_file = "~/.local/.src/zettlekasten/fleeting.md"
  elseif tag == "permanent" then
    section_file = "~/.local/.src/zettlekasten/permanent.md"
  elseif tag == "literature" then
    section_file = "~/.local/.src/zettlekasten/literature.md"
  end

  if section_file ~= "" then
    local fname = filename:gsub("%.md$", "")
    local line = string.format("[[%s]]", fname)
    append_link_to_section(vim.fn.expand(section_file), section_header, line)
  end
end

-- Backlink search using snacks.nvim instead of Telescope
function M.search_backlinks()
  local filename = vim.fn.expand("%:t")
  local stem = filename:gsub("%.md$", "")
  local query = "[[" .. stem .. "]]"

  require("snacks").picker("grep", {
    default_text = query,
    cwd = "~/.local/.src/zettlekasten",
  })
end

-- Grep selected visual text
function M.search_visual()
  local selected = vim.fn.getreg("v")
  require("snacks").picker("grep", {
    default_text = selected,
    cwd = "~/.local/.src/zettlekasten",
  })
end

-- Insert wikilink via fuzzy picker
function M.insert_link()
  require("snacks").picker("files", {
    cwd = "~/.local/.src/zettlekasten",
    attach_mappings = function(_, map)
      map("i", "<CR>", function(prompt_bufnr)
        local entry = require("snacks").get_selected_entry(prompt_bufnr)
        local name = vim.fn.fnamemodify(entry.value, ":t:r")
        vim.api.nvim_put({ string.format("[[%s]]", name) }, "", true, true)
        require("snacks.actions").close(prompt_bufnr)
      end)
      return true
    end,
  })
end

function M.launch_top7()
  local dirs = {
    permanent = "~/.local/.src/zettlekasten/permanent",
    fleeting = "~/.local/.src/zettlekasten/fleeting",
    literature = "~/.local/.src/zettlekasten/literature",
  }

  local tmp = {}
  for label, path in pairs(dirs) do
    local expanded = vim.fn.expand(path)
    local cmd = "find "
      .. expanded
      .. " -maxdepth 1 -name '*.md' -exec stat -c '%Y "
      .. label
      .. ":%n' {} \\; 2>/dev/null"
    local handle = io.popen(cmd)
    if handle then
      for line in handle:lines() do
        table.insert(tmp, line)
      end
      handle:close()
    end
  end

  -- Sort entries by timestamp descending
  table.sort(tmp, function(a, b)
    local a_ts = tonumber(a:match("^(%d+)"))
    local b_ts = tonumber(b:match("^(%d+)"))
    return a_ts > b_ts
  end)

  -- Extract Top 7
  local entries = {}
  for i = 1, math.min(7, #tmp) do
    local _, rest = tmp[i]:match("^(%d+)%s+(.+)$")
    table.insert(entries, rest)
  end

  vim.ui.select(entries, { prompt = "Top 7 Recent Notes:" }, function(choice)
    if not choice then
      return
    end
    local label, fullpath = choice:match("^(%w+):(.+)$")
    if label and fullpath then
      vim.cmd("edit " .. fullpath)
    end
  end)
end

return M
