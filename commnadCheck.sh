#! /bin/bash
# use command $? to check execution status of last command 
read -p "enter a command to execute: " cmd;
$cmd

if [ $? == 0 ]
then
	echo "command" $cmd "executed successfully";
else
	echo "command" $cmd "did not execute successfully";
fi
