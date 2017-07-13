#!/bin/bash
width=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
height=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

while [ true ] ; do
   read -t 5 -n 1
   if [ $? = 0 ] ; then
      exit ;
   else
      xdotool mousemove $(( $width/2 )) $(( $height/2 )) click 1
   fi
done
