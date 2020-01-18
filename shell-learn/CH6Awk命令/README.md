# shell-learn
李汇川的shell复习教程

# 文本处理三剑客 
- grep 命令 过滤器
- sed 编辑器
- awk 报告生成器


## awk 报告生成器


awk是一个文本处理工具，通常用于处理数据并生成结果报告

awk的命名是它的创始人AlfredAho，Peter Weinberger 和Brian Kernighan姓氏的首个字母组成的


![](./photo/01.png)

![](./photo/02.png)


### awk 内置变量


![](./photo/03.png)

![](./photo/04.png)

	内置变量：
			$0					打印行所有信息
			$1~$n				打印行的第1到n个字段的信息
			NF	Number Field				处理行的字段个数
			NR	Number Row					处理行的行号
			FNR	File Number Row				多文件处理时，每个文件单独记录行号
			FS	Field Separator				字段分割符，不指定时默认以空格或tab键分割
			RS	Row Separator				行分隔符，不指定时以回车分割\n
			OFS	 Output Filed Separator		输出字段分隔符。
			ORS	 Output Row Separator		输出行分隔符
			FILENAME			处理文件的文件名
			ARGC				命令行参数个数
			ARGV				命令行参数数组

### awk 命令例子
    awk '{print $0}' passwd
    
    awk 'BEGIN{FS=":"} {print $1}' passwd

## uid

    awk 'BEGIN{FS=":"} {print $3}' passwd
    
    awk '{print $1}' list
### 字段的个数
    awk '{print NF}' list
    
    awk '{print NR}' list list
    
    awk '{print FNR}' list list
    
    awk 'BEGIN{RS="\t";FS="|";ORS="&"}{print $1,$3}' list list
    
    awk 'BEGIN{ORS="&"}{print $1,$3}' list list
    
    输出文件名
    awk '{print FILENAME}' list
    
    
    awk '{print ARGC}' list
    
    $NF 最后一个字段
    awk 'BEGIN{FS=":"}{print $NF}' passwd

### printf


![](./photo/05.png)
    
    	-		左对齐
        +		右对齐
        #		显示8进制在前面加0，显示16进制在前面加0x

    awk 'BEGIN{FS=":"}{printf $1}' passwd
    awk 'BEGIN{FS=":"}{printf "%s\n",$1}' passwd
    awk 'BEGIN{FS=":"}{printf "%s-%s\n",$1,$7}' passwd
    20 占位
    awk 'BEGIN{FS=":"}{printf "%20s-%20s\n",$1,$7}' passwd
    左对齐
    awk 'BEGIN{FS=":"}{printf "%-20s-%-20s\n",$1,$7}' passwd
    格式符示例：
        1、以字符串格式打印/etc/passwd中的第7个字段，以":"作为分隔符
        
            awk 'BEGIN{FS=":"} {printf "%s",$7}' /etc/passwd
        
        2、以10进制格式打印/etc/passwd中的第3个字段，以":"作为分隔符
        
            awk 'BEGIN{FS=":"} {printf "%d\n",$3}' /etc/passwd
        
        3、以浮点数格式打印/etc/passwd中的第3个字段，以":"作为分隔符
        
            awk 'BEGIN{FS=":"} {printf "%0.3f\n",$3}' /etc/passwd
        
        4、以16进制数格式打印/etc/passwd中的第3个字段，以":"作为分隔符
        
            awk 'BEGIN{FS=":"} {printf "%#x\n",$3}' /etc/passwd
        
        5、以8进制数格式打印/etc/passwd中的第3个字段，以":"作为分隔符
        
            awk 'BEGIN{FS=":"} {printf "%#o\n",$3}' /etc/passwd
        
        6、以科学计数法格式打印/etc/passwd中的第3个字段，以":"作为分隔符
              awk 'BEGIN{FS=":"} {printf "%e\n",$3}' /etc/passwd
        
    
## awk模式匹配用法总结：

	第一种方法：RegExp
	第二种方法：运算符匹配
	
	1、RegExp
	
		匹配/etc/passwd文件行中含有root字符串的所有行
			awk 'BEGIN{FS=":"}/root/{print $0}' /etc/passwd
		匹配/etc/passwd文件行中以yarn开头的所有行
			awk 'BEGIN{FS=":"}/^yarn/{print $0}' /etc/passwd
    2、运算符匹配
	
		关系运算符匹配：
			<			小于
			>			大于
			<=			小于等于
			>=			大于等于
			==			等于
			!=			不等于
			~			匹配正则表达式
			!~			不匹配正则表达式
    (1)、以:为分隔符，匹配/etc/passwd文件中第3个字段小于50的所有行信息
        awk 'BEGIN{FS=":"}$3<50{print $0}' /etc/passwd
    (2)、以:为分隔符，匹配/etc/passwd文件中第3个字段大于50的所有行信息
        awk 'BEGIN{FS=":"}$3>50{print $0}' /etc/passwd
    (3)、以:为分隔符，匹配/etc/passwd文件中第7个字段为/bin/bash的所有行信息
        awk 'BEGIN{FS=":"}$7=="/bin/bash"{print $0}' /etc/passwd
    (4)、以:为分隔符，匹配/etc/passwd文件中第7个字段不为/bin/bash的所有行信息
        awk 'BEGIN{FS=":"}$7!="/bin/bash"{print $0}' /etc/passwd
    (5)、以：为分隔符，匹配/etc/passwd中第3个字段包含3个以上数字的所有行信息
        awk 'BEGIN{FS=":"}$3~/[0-9]{3,}/{print $0}' /etc/passwd
        
     布尔运算符匹配：
			||			或
			&&			与
			!			非
			
		(1)、以:为分隔符，匹配/etc/passwd文件中包含hdfs或yarn的所有行信息
			awk 'BEGIN{FS=":"}$1=="hdfs" || $1=="yarn" {print $0}' /etc/passwd
		(2)、以:为分隔符，匹配/etc/passwd文件中第3个字段小于50并且第4个字段大于50的所有行信息
			awk 'BEGIN{FS=":"}$3<50 && $4>50 {print $0}' /etc/passwd
			
		
			
		