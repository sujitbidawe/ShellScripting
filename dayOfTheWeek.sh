#! /bin/bash

read -p "enter date: " date
read -p "enter month: " month
read -p "enter year: " year

# following commented syntax is for taking input with file name
#like==> $ bash dayOfWeek.sh dd mm yyyy
#date=$1
#month=$2
#year=$3

yZero=$(( year-(14-month)/12 ))
x=$(( yZero+(yZero/4)-(yZero/100)+(yZero/400) ))
mZero=$(( month+(12*((14-month)/12))-2 ))
dZero=$(( (date+x+(31*mZero/12))%7 ))

#for checking if date is valid
if (( $date>31 || $date<1 ))
then
	echo "enter a valid input for date"
else a=1
fi

# for checking if month is valid
if (( $month<1 || $month>12 ))
then
	echo "enter a valid input for month"
else
	b=1
fi

# for checking if year is valid
if (( $year<1 ))
then
	echo "enter a valid input for year"
else
	c=1
fi

#for printing the day
if (( $dZero==0 && a==1 && b==1 && c==1 ))
then
	echo "Sunday!"
elif (( $dZero==1 && a==1 && b==1 && c==1 ))
then
	echo "Monday!"
elif (( $dZero==2 && a==1 && b==1 && c==1 ))
then
	echo "Tuesday!"
elif (( $dZero==3 && a==1 && b==1 && c==1 ))
then
	echo "Wednesday!"
elif (( $dZero==4 && a==1 && b==1 && c==1 ))
then
	echo "Thursday!"
elif (( $dZero==5 && a==1 && b==1 && c==1 ))
then
	echo "Friday!"
elif (( $dZero==6 && a==1 && b==1 && c==1 ))
then
	echo "Saturday!"
else
	echo entered invalid input/inputs
fi
