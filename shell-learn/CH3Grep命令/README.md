# shell-learn
李汇川的shell复习教程

# 文本处理三剑客 
- grep 命令 过滤器
- sed 编辑器
- awk 报告生成器


## grep 和 egrep


grep语法格式：
    
     grep [option] [pattern] [file1,file2...]
        
     必须掌握的选项：
    
        -v					显示不匹配pattern的行 / 反向查找
        -i					搜索时忽略大小写
        -n					显示行号
        -E					支持扩展的正则表达式
        -F					不支持正则表达式，按字符串的字面意思进行匹配
        -r					递归搜索
    需了解的选项：
        
        -c					只输出匹配行的数量，不显示具体内容
        -w					匹配整词
        -x					匹配整行
        -l					只列出匹配的文件名，不显示具体匹配行内容
例子：
    
    grep python file
    grep -v python file
    grep -E "py|pY" file
    grep -cE "py|pY" file

grep和egrep：
		
			grep默认不支持扩展正则表达式，只支持基础正则表达式
			
			使用grep -E可以支持扩展正则表达式
			
			使用egrep可以支持扩展正则表达式，与grep -E等价
