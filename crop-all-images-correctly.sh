#!/bin/bash 

# FIXME: this is duplicate code which could be put into a function

# from 242 to 431
for i in {242..431} 
do
    # https://linuxacademy.com/blog/linux/cropping-multiple-images-the-same-way-short-tutorial/
    # https://unix.stackexchange.com/a/149753
    mogrify -crop 3840x1680+0+0 "out$i.png"
done

# from 432 to 780
for i in {432..780} 
do
    mogrify -crop 3840x1831+0+0 "out$i.png"
done


# from 781 to 818
for i in {781..818} 
do
    mogrify -crop 3840x1700+0+0 "out$i.png"
done

# from 819 to 878
for i in {819..878} 
do
    mogrify -crop 3840x1770+0+0 "out$i.png"
done

# from 878 to 918
for i in {878..918} 
do
    mogrify -crop 3840x1810+0+0 "out$i.png"
done

# from 956 to 1150
for i in {956..1150} 
do
    mogrify -crop 3840x1559+0+0 "out$i.png"
done

# from 1160 to 1202
for i in {1160..1202} 
do
    mogrify -crop 3840x1860+0+0 "out$i.png"
done

# from 1222 to 1313
for i in {1222..1313} 
do
    mogrify -crop 3840x1890+0+0 "out$i.png"
done

# from 1440 to 1472
for i in {1440..1472} 
do
    mogrify -crop 3840x1860+0+0 "out$i.png"
done

# from 1472 to 1512
for i in {1472..1512} 
do
    mogrify -crop 3840x1960+0+0 "out$i.png"
done
