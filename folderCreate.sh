#! /bin/bash

echo -n enter the folder name: 
read folderName

if [ -d $folderName ]
then
	echo folder $folderName already exist
else
	mkdir $folderName
fi
