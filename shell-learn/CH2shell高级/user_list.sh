#!/bin/bash
function  get_users
{
  users=`cat /etc/passwd | cut -d: -f1`
  echo $users
}

user_list=`get_users`
index=1

for u in $user_list
do
    echo "the $index user is : $u"
    index=$(($index+1))
done