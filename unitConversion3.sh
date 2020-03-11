#! /bin/bash

read -p "enter length of the plot in feet: " lengthInFeet
read -p "enter width of the plot in feet: " widthInFeet

lengthInMeter=`echo "scale=2; $lengthInFeet/3.281" | bc` 
widthInMeter=`echo "scale=2; $widthInFeet/3.281" | bc`

areaInMeter=`echo "scale=2; $lengthInMeter*$widthInMeter" | bc`
echo area of 1 plot in meter is $areaInMeter square meters

twentyFivePlotArea=`echo "scale=2; $areaInMeter*25" | bc`
echo area of 25 plots in meter is $twentyFivePlotArea square meters

areaInAcre=`echo "scale=6; $twentyFivePlotArea/4046.86" | bc`
echo area of 25 plots with length $length inch and width $width inch is $areaInAcre acre
