#! /bin/bash 

# input ==> files older than 7 days from /var/log
# output==> move input to backups folder

cd /var/log
for file in `find -type f -mtime +7`
do
	mv $file /var/backups;
done
