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
