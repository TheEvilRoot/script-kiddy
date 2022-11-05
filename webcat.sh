#!/usr/bin/env sh

if [ -z "$1" ];
then
    echo 'error: expected argument: video playback file'
    exit 1
fi

ls -l /dev/video0 || modprobe v4l2loopback card_label="CCTV" exclusive_caps=1
ffmpeg -stream_loop -1 -re -i $1 -vcodec rawvideo -threads 0 -f v4l2 /dev/video0
