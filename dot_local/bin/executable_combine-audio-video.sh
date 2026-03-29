#!/bin/sh
# If only video/audio, simply copy both into new file (no re-encode/"instant")
ffmpeg -hide_banner \
  -i out_vid.mkv -i out_mic.wav \
  -map 0:v -map 1:a \
  -c copy \
  -shortest -y final.mkv
