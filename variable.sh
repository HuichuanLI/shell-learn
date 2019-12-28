#/bin/bash
message='hello world'
echo "the message is $message"
echo "you are in the `pwd`"

read -p  "please input your name:" -n 10 first second
echo -e "\n $first $second"
