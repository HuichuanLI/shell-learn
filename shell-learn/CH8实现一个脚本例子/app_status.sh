#!/bin/bash
#
# Func: Get Porcess Status In process.cfg

# Define Variables
HOME_DIR="/Users/hui/Desktop/shell/shell-learn/shell-learn/CH8实现一个脚本例子"
CONFIG_FILE="process.cfg"
this_pid=$$

echo $HOME_DIR/$CONFIG_FILE


function get_all_group
{
	if [ ! -e $HOME_DIR/$CONFIG_FILE ];then
	    echo "$CONFIG_FILE is not exist.. please Check.."
	    exit 1
	else
      G_LIST=`sed -n '/\[GROUP_LIST\]/,/\[.*\]/p' $HOME_DIR/$CONFIG_FILE | egrep -v "(^$|\[.*\])"`
  	  echo "$G_LIST"
	fi

}

function get_all_process
{
	for g in `get_all_group`
	do
		P_LIST=`sed -n "/\[$g\]/,/\[.*\]/p" $HOME_DIR/$CONFIG_FILE | egrep -v "(^$|\[.*\])"`
		echo "$P_LIST"
	done
}


for g in `get_all_process`
do
    echo $g
done