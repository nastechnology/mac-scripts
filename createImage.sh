#!/bin/bash

EXT=$1
IMGNAME=$2

if [ -z "$1" ]; then
  echo "Please provide an External Volume and Image name i.e. ./createImage.sh /Volumes/ExternalDrive MacbookTeacher"
  exit 1
elif [ -z "$2" ]; then
  echo "Please provide an image name!"
  exit 1
elif [ ! -d "/Volumes/Macintosh HD" ]; then
  echo "Uh Oh, MacBook not found! Check thunderbolt connection and make sure it is in target disk mode"
  exit 1
fi

hdiutil create -srcfolder /Volumes/Macintosh\ HD/ ${EXT}/${IMGNAME}.dmg

while [[ `ps aux | grep -v grep | grep -c 'hdiutil create -srcfolder'` -eq "1" ]]; do
  sleep 1
done

echo "Starting asr imagescan"
asr imagescan --source ${EXT}/${IMGNAME}.dmg

mv ${EXT}/${IMGNAME}.dmg ${EXT}/${IMGNAME}_`date +%m%d%Y`.dmg
