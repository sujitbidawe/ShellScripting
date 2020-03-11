#! /bin/bash

# input file format  ==> abc.log.1
# output file format ==> abc-ddmmyy.log

date=$(date +%d%m%Y)

for file in `ls *.log.1`
do
	echo renaming file $file
	echo today\'s date is $(date +%d/%m/%Y);
	first=`echo $file | awk -F. '{print $1}'`;
	second=$date
	third=`echo $file | awk -F. '{print $2}'`;
	mv $file $first-$second.$third;
done
