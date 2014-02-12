#!/bin/bash

EXT=$1
IMGNAME=$2

if [ -z "$1" ]; then
  echo "No arguments supplied - Please provide an External Volume and Image name i.e. ./createImage.sh /Volumes/ExternalDrive MacbookTeacher"
  exit 1
fi

hdiutil create -srcfolder /Volumes/Macintosh\ HD\ 1/ ${EXT}/${IMGNAME}.dmg

sleep 10

asr imagescan --source ${EXT}/${IMGNAME}.dmg

sleep 10

mv ${EXT}/${IMGNAME}.dmg ${EXT}/${IMGNAME}_`date +%m%d%Y`.dmg

