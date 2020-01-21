# shell-learn
李汇川的shell复习教程

## 脚本功能描述

    	脚本工具功能概述：
	
		需求描述：
			1、实现一个脚本工具，该脚本提供类似supervisor功能，可以对进程进行管理；
			2、一键查看所有进程运行状态
			3、单个或批量启动进程，单个或批量停止进程
			4、提供进程分组功能，可以按组查看进行运行状态，可以按组启动或停止该组内所有进程
		
		查看服务器所有进程脚本app_status.sh		配置文件process.cfg
		
		扩展：
			1、启动服务器进程脚本app_start.sh
			2、停止服务器进程脚本app_stop.sh
			拆分脚本功能，抽象函数
	
		 
		功能函数一代码：
            function get_all_group
            {
                
            }
        	./app_status.sh执行有三种情况：
	
		1	无参数			列出配置文件中所有进程的运行信息
		2	-g GroupName	列出GroupName组内的所有进程
		3	process_name1	列出指定进程的运行信息


    function get_all_group
	
		说明：该函数无需输入任何参数；返回配置文件 process.cfg中所有的组信息，例如WEB、DB等
	
	function get_all_process
	
		说明：该函数无需输入任何参数；返回配置文件 process.cfg中所有的进程信息。
	
	function get_process_pid_by_name
	
		说明：该函数接收一个参数，参数为进程名称；返回值是一个PID的列表，可能有一个PID，也可能有多个
	
	function get_process_info_by_pid
	
		说明：该函数接收一个参数，参数为进程PID；返回值是一个进程运行信息的列表，列表包含运行状态、CPU占用率、内存占用率、进程启动时间
	
	function is_group_in_config
	
		说明：该函数接收一个参数，参数为组的名称；返回值是0或1,0代表该组在配置文件中，1代表该组不在配置文件中
	
	function get_all_process_by_group
	
		说明：该函数接收一个参数，参数为组名称；返回值是对应组内的所有进程名称列表
		
	function get_group_by_process_name
	
		 说明：该函数接收一个参数，参数是一个进程名称；返回值是一个组名
    function format_print	 
	
		说明：该函数接收二个参数，第一个参数为process_name，第二个参数为组名称
		返回值，是针对每一个进程PID的运行信息
    function is_process_in_config

    说明：该函数接收一个参数，参数为进程名称；返回值是0或1,0代表该进程在配置文件中，1代表进程不在配置文件中
