#!/bin/bash
#子进程的pid
this_pid=$$
while true
do
ps -ef | grep nginx | grep -v grep | grep -v $this_pid &> /dev/null
if [ $? -eq 0 ];then
	echo "Nignx is running well"
	sleep 3
else
	echo "Niginx is down,restart Nignx"
	sleep 3
fi
done
