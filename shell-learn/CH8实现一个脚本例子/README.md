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
	
		1、function get_all_process		返回进程名称列表字符串
		
		2、function get_all_group		返回进程组列表字符串
		
		3、function get_process_info	返回进程详细信息列表字符串，详细信息包括：运行状态、PID、CPU、MEM、启动时间
		
			注：该函数可以接收一个参数，参数为进程名称
			
		4、function get_all_process_by_group	返回进程组内的所有进程名称列表字符串
			
			例子：DB组--> "mysql postgresql oracle"
		 
		功能函数一代码：
            function get_all_group
            {
                
            }
        	./app_status.sh执行有三种情况：
	
		1	无参数			列出配置文件中所有进程的运行信息
		2	-g GroupName	列出GroupName组内的所有进程
		3	process_name1	列出指定进程的运行信息
		