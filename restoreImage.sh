#!/bin/bash

SRC=$1
#DST=Macintosh\ HD\ 1
DST=Macintosh\ HD

if [ -z "$1" ]; then
echo "No arguments supplied - Please provide an image name i.e. ./restoreImage.sh ~/Documents/MacBook_image.dmg"
  exit 1
fi

while true
do

if [ -d "/Volumes/$DST" ]; then
  sleep 3
  asr restore --source "$SRC" --target /Volumes/"$DST" -erase -noverify
  sleep 5
  echo "Done with imaging"
  echo "Please reboot this Mac and"
  echo "move on to your next imaging station"
  sleep 5
  diskutil unmount "/Volumes/$DST"
  sleep 5
  #hdiutil detach /dev/disk1
  echo -e '\a'

  say -v  Fred "Mac is imaged"

  echo -e '\a'

fi

echo "Press [Ctrl+C] to stop.."
sleep 1

done
