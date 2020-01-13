#!/bin/bsh


if ps -ef | grep mysqld | grep -v grep &> /dev/null;then
	echo "MySQL is running"
elif  ps -ef | grep httpd | grep -v grep &> /dev/null
then
	echo "Apache HTTPD is RUNNING"
else
	echo "MySQL is stopped"
fi
