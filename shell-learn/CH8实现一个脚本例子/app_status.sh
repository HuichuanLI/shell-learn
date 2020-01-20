#!/bin/bash
#
# Func: Get Porcess Status In process.cfg

# Define Variables
HOME_DIR="/Users/hui/Desktop/shell/shell-learn/shell-learn/CH8实现一个脚本例子"
CONFIG_FILE="process.cfg"
this_pid=$$

#echo $HOME_DIR/$CONFIG_FILE


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


function get_process_pid_by_name
{
    if [ $# -ne 1 ];then
      return 1
    else
        pids=`ps -ef | grep $1 | grep -v grep | grep -v $this_pid | awk '{print $2}'`
        echo $pids
    fi
}

function get_process_info_by_pid
{
  if [ `ps -ef | awk -v pid=$1 '$2==pid{print }' | wc -l` -eq 1 ];then
		pro_status="RUNNING"
	else
		pro_status="STOPED"
	fi
	pro_cpu=`ps aux | awk -v pid=$1 '$2==pid{print $3}'`
	pro_mem=`ps aux | awk -v pid=$1 '$2==pid{print $4}'`
  pro_start_time=`ps -p $1 -o lstart | grep -v STARTED`

}

function is_group_in_config
{
	for gn in `get_all_group`;do
		if [ $gn = $1 ];then
			return
		fi
	done
	return 1
}

function get_group_by_process_name
{
  	is_group_in_config $1
  	if [ $? -ne 1 ];then
        p_list=`sed -n "/\[$1\]/,/\[.*\]/p" $HOME_DIR/$CONFIG_FILE | egrep -v "(^$|^#|\[.*\])"`
        echo $p_list
  	else
  	    echo "GroupName $1 is not in process.cfg"
  	fi
}

#for g in `get_all_process`
#do
#     get_process_pid_by_name $g
#done

#get_process_info_by_pid 180
#
#echo "$pro_status $pro_cpu $pro_mem $pro_start_time"

get_group_by_process_name $1

