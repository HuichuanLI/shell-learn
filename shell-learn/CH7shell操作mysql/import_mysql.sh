#!/bin/bash
#


user="root"
password="root"


mysql_conn="mysql -u"$user" -p"$password" "

cat data.txt | while read id name birth sex
do
	if [ $id -gt 1014 ];then
		$mysql_conn -e "INSERT INTO school.student1 values('$id','$name','$birth','$sex')"
	fi
done
