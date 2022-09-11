#!/bin/sh

ffmpeg -i $1 -vf convolution="-2 -1 0 -1 1 1 0 1 2:-2 -1 0 -1 1 1 0 1 2:-2 -1 0 -1 1 1 0 1 2:-2 -1 0 -1 1 1 0 1 2" /tmp/vhs.mp4
ffmpeg -i /tmp/vhs.mp4 -i fixoverlay.mp4 -filter_complex '[1:v]colorkey=0x110F0D:0.3:0.1[ckout];[0:v][ckout]overlay[out]' -map '[out]' output.mp4
