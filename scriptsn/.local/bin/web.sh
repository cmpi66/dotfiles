
#!/bin/env zsh
# Script i got from https://superuser.com/questions/1071765/how-to-add-web-camvideo-recording-as-overlay-using-ffmpeg
# it screencasts and it has a webcam overlay. I cant control the webcam nor can i see it while im recording. Its progress though. Eventually I'll learn how to do it with my eyes closed.

file=`date +%Y-%m-%d-%H.%M.%S`
ffmpeg -f alsa -i default -f x11grab -thread_queue_size 64 -i :0.0 -i /dev/video0 \
       -filter_complex 'overlay=main_w-overlay_w:main_h-overlay_h' \
    -r 60 -preset ultrafast ~/media/Videos/screencasts-${file}.mp4
