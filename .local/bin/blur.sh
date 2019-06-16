#!/bin/bash

IMG=/tmp/lock.png
TEXT=`fortune`

grim $IMG

gm convert $IMG \
   -scale 25% -blur 0x2 -scale 400% \
   -font Ubuntu -pointsize 48 -gravity center -label "Hello" \
   $IMG
swaylock -s fill -i $IMG
