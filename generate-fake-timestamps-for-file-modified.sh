#!/bin/bash
# put things in the right order by adding a dummy exif tag to trigger the correct date modified sequence (the for image in *.png thing messes up date modifieds by doing it by file "name" (doesn't take into account the numbers, so it would do 1 first, then 10, then 100, etc., when it should do 1,2,3,...,10, etc))
for i in {1..1528}
do
    # use quotes just in case...
    # https://exiftool.org/examples.html
    # https://digital-geography.com/geotagging/
    exiftool -overwrite_original -artist=me "out$i.png"
    # wait 2 seconds to trigger a new "second" for file modification date.
    sleep 2
done
