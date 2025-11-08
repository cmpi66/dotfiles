#!/bin/bash

# You can match on your script name, ffmpeg, or output file
if pgrep -f "ffmpeg.*plughw:5,0" >/dev/null; then
  echo ' '

else
  echo ''
fi
