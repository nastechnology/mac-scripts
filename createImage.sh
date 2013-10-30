#!/bin/bash

EXT=$1
IMGNAME=$2

if [ -z "$1" ]; then
echo "No arguments supplied"
  exit 1
fi

hdiutil create -srcfolder / /Volumes/${EXT}/${IMGNAME}.dmg

sleep 10

asr -imagescan /Volumes/${EXT}/${IMGNAME}.dmg

sleep 10

mv /Volumes/${EXT}/${IMGNAME}.dmg /Volumes/${EXT}/${IMGNAME}`date +%Y-%m-%d’.dmg
