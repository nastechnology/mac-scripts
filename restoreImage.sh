#!/bin/bash

SRC=$1
DST=Macintosh\ HD\ 1

if [ -z "$1" ]; then
echo "No arguments supplied - Please provide an image name i.e. ./restoreImage.sh ~/Documents/MacBook_image.dmg"
  exit 1
fi

asr restore --source $1 -target /Volumes/"$DST" -erase -noverify

echo Done with imaging
echo Please reboot this Mac and
echo move on to your next imaging station
