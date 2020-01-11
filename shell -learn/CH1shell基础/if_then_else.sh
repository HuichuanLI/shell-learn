#!/bin/bsh


if ps -ef | grep mysqld | grep -v grep &> /dev/null
then
	echo "MySQL is runing"
else
	echo "MySQL is stopped"
fi
