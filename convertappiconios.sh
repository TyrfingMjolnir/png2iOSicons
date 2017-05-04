#!/usr/bin/env bash

echo ${1%.*}

/bin/mkdir ${1%.*}

/usr/local/bin/convert $1 -resize '180x180' ${1%.*}/app_180x180.png
/usr/local/bin/convert $1 -resize '120x120' ${1%.*}/app_120x120.png
/usr/local/bin/convert $1 -resize   '87x87' ${1%.*}/app_087x087.png
/usr/local/bin/convert $1 -resize   '80x80' ${1%.*}/app_080x080.png
/usr/local/bin/convert $1 -resize   '60x60' ${1%.*}/app_060x060.png
/usr/local/bin/convert $1 -resize   '58x58' ${1%.*}/app_058x058.png
/usr/local/bin/convert $1 -resize   '40x40' ${1%.*}/app_040x040.png
