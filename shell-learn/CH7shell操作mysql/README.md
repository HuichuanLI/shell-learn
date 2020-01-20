# shell-learn
李汇川的shell复习教程

## linux mysql 参数详解

mysql命令参数详解：
	
		-u	用户名
		-p	用户密码
		-h	服务器IP地址
		-D	连接的数据库
		-N	不输出列信息
		-B	使用tab键代替默认交互分隔符
		-e	执行SQL语句
		
		其他选项
		-E	垂直输出
		-H	以HTML格式输出
		-X	以XML格式输出

1、写一个脚本，该脚本可以接收二个参数，参数为需要执行的SQL语句
    
    mysql -uroot -proot -D school -e "SELECT * FROM student;"
    // 不显示列信息
    mysql -uroot -proot -D school -N -B  -e "SELECT * FROM student;"
    //垂直输出
    mysql -uroot -proot -D school -N -B -E  -e "SELECT * FROM student;"
[mysql](./operate_mysql.sh)
    
    sh operate_mysql.sh school 

2.如何将文本中格式化的数据导入到MySQL数据库中？
    
    需求1：处理文本中的数据，将文本中的数据插入MySQL中			
			1010	jerry	1991-12-13	male
			1011	mike	1991-12-13	female
			1012	tracy	1991-12-13	male
			1013	kobe	1991-12-13	male
			1014	allen	1991-12-13	female
			1015	curry	1991-12-13	male
			1016	tom		1991-12-13	female

    需求2：
			2021||hao||1989-12-21||male
			2022||zhang||1989-12-21||male
			2023||ouyang||1989-12-21||male
			2024||li||1989-12-21||female
			
        