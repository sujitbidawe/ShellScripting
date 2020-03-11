#! /bin/bash

read -p "enter length of the plot: " length
read -p "enter width of the plot: " width

lengthInMetres=`echo "scale=2; $length/3.2808" | bc` 
widthInMetres=`echo "scale=2; $width/3.2808" | bc`

echo "given plot in metres is $lengthInMetres X $widthInMetres"
