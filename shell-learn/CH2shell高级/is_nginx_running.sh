#!/bin/bash

#

this_pid=$$

function is_nginx_running
{

  ps -ef | grep nginx | grep -v $this_pid | grep -v grep > /dev/null 2>&1
  if [ $? -eq 0 ];then
    return 0
  else
    return 1
  fi
}

is_nginx_running && echo "Nginx is running" || echo "Nginx is stopped"