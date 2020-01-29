#!/bin/bash
# https://stackoverflow.com/a/40090033
if [ $# -eq 0 ]
then
  echo "Specify the video file name as the first argument."
fi
# use a different time, e.g. 00:07:30, to start extracting other images if you run out of disk space
# can change fps=3 to something more reasonable (e.g. fps=1 or fps=1/2) if you want.
ffmpeg -i $1 -ss 00:00:00 -vf fps=3 -vsync 0 out%d.png
