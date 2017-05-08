#!/usr/bin/env bash

echo ${1%.*}

/bin/mkdir ${1%.*}

### For illumOS / SmartOS please use /opt/local/bin/convert below as pr vim :8,14s/usr/opt/
/usr/local/bin/convert $1 -resize '180x180' ${1%.*}/app_180x180.png
/usr/local/bin/convert $1 -resize '120x120' ${1%.*}/app_120x120.png
/usr/local/bin/convert $1 -resize   '87x87' ${1%.*}/app_087x087.png
/usr/local/bin/convert $1 -resize   '80x80' ${1%.*}/app_080x080.png
/usr/local/bin/convert $1 -resize   '60x60' ${1%.*}/app_060x060.png
/usr/local/bin/convert $1 -resize   '58x58' ${1%.*}/app_058x058.png
/usr/local/bin/convert $1 -resize   '40x40' ${1%.*}/app_040x040.png

###
### convert logo: -resize '100' wiz1.png
### convert logo: -resize 'x200' wiz2.png
### convert logo: -resize '100x200>' wiz3.png
### convert logo: -resize '100x200<' wiz4.png
###
### If only one dimension is given it is taken to be the width. When only the width is specified, as in the first example above, the width is accepted as given and the height is chosen to maintain the aspect ratio of the input image. Similarly, if only the height is specified, as in the second example above, the height is accepted and the width is chosen to maintain the aspect ratio.
### Use > to shrink an image only if its dimension(s) are larger than the corresponding width and/or height arguments. Use < to enlarge an image only if its dimension(s) are smaller than the corresponding width and/or height arguments. In either case, if a change is made, the result is as if the > or < operator was not present. So, in the third example above, we specified 100x200> and the original image size is 640x480, so the image size is reduced as if we had specified 100x200. However, in the fourth example above, there will be no change to its size.
### Finally, use @ to specify the maximum area in pixels of an image, again while attempting to preserve aspect ratio. (Pixels take only integer values, so some approximation is always at work.) In the following example, an area of 10000 pixels is requested. The resulting file has dimensions 115x86, which has 9890 pixels.
###
### convert logo: -resize '10000@' wiz10000.png
###
### From the "Bounding the width, height, and area; the operators >, <, and @" part of the geometry section here: https://imagemagick.org/script/command-line-processing.php#geometry
