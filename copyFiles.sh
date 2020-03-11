#! /bin/bash

# input file format ==> abc.txt
# output file format ==> abc/abc.txt

for file in `ls *.txt`
do
	foldername=`echo $file | awk -F. '{print $1}'`;
	if [ -d $foldername ]
	then
		mv $file $foldername;
	else
		mkdir $foldername;
		mv $file $foldername;
	fi

done
