#!/bin/bash
#


user="root"
password="root"

mysql_conn="mysql -u'$user' -p'$password' "

IFS=":"

cat data-2.txt | while read id name birth sex
do
	mysql -u"$user" -p"$password"  -e "INSERT INTO school.student1 values('$id','$name','$birth','$sex')"
done
