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

function is_process_in_config
{
	for pn in `get_all_process`;do
		if [ $pn == $1 ];then
			return
		fi
	done
	echo "Process $1 is not in process.cfg"
	return 1
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


function get_all_process_by_group
{
	is_group_in_config $1
	if [ $? -eq 0 ];then
		p_list=`sed -n "/\[$1\]/,/\[.*\]/p" $HOME_DIR/$CONFIG_FILE | egrep -v "(^$|^#|\[.*\])"`
		echo $p_list
	else
		 echo "GroupName $1 is not in process.cfg"
	fi
}


function get_group_by_process_name
{
	for gn in `get_all_group`;do
		for pn in `get_all_process_by_group $gn`;do
			if [ $pn == $1 ];then
				echo "$gn"
			fi
		done
	done
}

function format_print
{
    ps -ef | grep $1 | grep -v grep | grep -v $this_pid &> /dev/null
    if [ $? -eq 0 ];then
        pids=`get_process_pid_by_name $1`
        for pid in $pids;do
          get_process_info_by_pid $pid
          awk -v p_name=$1 \
            -v g_name=$2 \
            -v p_status=$pro_status \
            -v p_pid=$pid	\
            -v p_cpu=$pro_cpu \
            -v p_mem=$pro_mem \
            -v p_start_time="$pro_start_time" \
            'BEGIN{printf "%-20s%-12s%-10s%-6s%-7s%-10s%-20s\n",p_name,g_name,p_status,p_pid,p_cpu,p_mem,p_start_time}'
        done
    else
        awk -v p_name=$1 -v g_name=$2 'BEGIN{printf "%-20s%-12s%-10s%-6s%-7s%-10s%-20s\n",p_name,g_name,"STOPPED","NULL","NULL","NULL","NULL"}'
    fi
}

awk 'BEGIN{printf "%-20s%-10s%-10s%-6s%-7s%-10s%-20s\n","ProcessName---------","GroupName---","Status----","PID---","CPU----","MEMORY----","StartTime---"}'


#get_group_by_process_name mysql
if [ $# -gt 0 ];then
	if [ "$1" = "-g" ];then
		shift
	  for gn in $@;do
      for pn in `get_all_process_by_group $gn`;do
				is_process_in_config $pn && format_print $pn $gn
			done
	  done
	else
     for pn in $@;do
			gn=`get_group_by_process_name $pn`
			is_process_in_config $pn && format_print $pn $gn
		done
  fi
else
  for pn in `get_all_process`;do
		  gn=`get_group_by_process_name $pn`
      is_process_in_config $pn && format_print $pn $gn
	done
fi

