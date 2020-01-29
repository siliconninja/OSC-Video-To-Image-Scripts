#!/bin/bash 
# https://stackoverflow.com/a/57430478
for photo in *.png
do
    # https://stackoverflow.com/a/47066233
    # increase 0x8 at the bottom to a different number (e.g. 0x10) to have more blurring (changed from 0x5)
    # coordinates are any order to form a polygon, I did [Top left], [Top right], [Bottom right], [Bottom left]
    convert \
    $photo \
    \( -clone 0 -fill white -colorize 100 -fill black \
    -draw "polygon 2719,1038 3840,1038 3840,2160 2719,2160" \
    -alpha off -write mpr:mask +delete \) \
    -mask mpr:mask -blur 0x8 +mask $photo
done
