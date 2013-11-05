#!/bin/bash

SRC=$1
DST=Macintosh\ HD\ 1

asr restore --source /Volumes/Macintosh\ HD/Users/markmyers/Documents/Projects/NACS-MAC-Images/"$SRC" --target /Volumes/"$DST" --noverify --verbose --erase --noprompt

echo Done with imaging
echo Please reboot this Mac and
echo move on to your next imaging station
