# shell-learn
李汇川的shell复习教程

# 文本处理三剑客 
- grep 命令 过滤器
- sed 编辑器
- awk 报告生成器


## sed

sed(Stream Editor)，流编辑器。对标准输出或文件逐 行进行处理

![](./photo/01.png)

### sed 选项


![](./photo/02.png)


    打印两次
    sed 'p' sed.txt
    
    sed -n 'p' sed.txt
    
    // 查找包含 py 的行    
    sed -n '/py.*/p' sed.txt
    
    // 多个匹配
    sed -n -e '/py.*/p' -e '/PY/p' sed.txt
    
    // 使用文件    
    sed -n -f edit.sed sed.txt 
    
    // 扩展正则表达式
    sed -n -r '/py|PY/p' sed.txt
    
    // 直接替换
    sed -n  's/love/like/g;p' sed.txt
    
    // 文件内部替换
    sed -i 's/love/like/g' sed.txt

### 匹配模式

![](./photo/03.png)

1. LineNumber

    sed -n "1p" file  打印第一行
    
    10 -20 行 
    
    sed -n "10,20p" passwd
    
    10 +5 10～16
    
    sed -n "10,+5p" passwd
    
    匹配 字符串
    
    sed -n "/bash/p" passwd
    
    sed -n "/\/sbin\/nologin/p" passwd
    
    匹配 ^hdfs
    
    sed -n "/^hdfs/p" passwd
    
    匹配从第一个匹配的后一个匹配
    
    sed -n "/^root/,/^yarn/p" passwd
    
    匹配4行开始到^yarn结束    
    
    sed -n "4,/^yarn/p" passwd 


    
### sed 的编辑命令详解

![](./photo/04.png)

![](./photo/05.png)

       删除
       sed '1d' passwd 
       sed -i '1,3d' passwd 
       
       sed -i '/\/sbin\/nologin/d' passwd
       
       sed -i '/^mail/,/^ftp/d' passwd
       
       增加：
       最后添加
       sed -i '\/bin\/bash/a This is a user which can login to system'  passwd
       行前添加
       sed -i '/^hdfs/,/^yarn/i AAAAAAA' passwd 
       # 写到文件中
       sed -n '/root/r list' passwd
       # 写出文件
       sed -i '/\/bin\/bash/w ./login.txt' passwd
       
       修改：
       s/pattern/string/ 查找并替换一行第一个
       
       s/pattern/string/g 查找并替换全部
       
       s/pattern/string/ig 查找并替换 忽略大小写
       
       s/pattern/string/2g 从第二个开始替换所有的
       
       s/pattern/string/2 始替换第二个的
       
       # 替换掉
       sed 's/\/bin\/bash/\/BIN\/BASH/g' passwd
       
       sed 's/root/ROOT/' passwd
       
       # 替换的是后两个
       sed 's/root/ROOT/2g' passwd
       
       其他：
       = 显示行号
       
       sed -n '/root/=' passwd
        
       # 反向引用
       
       sed -i 's/had..p/&/ig' str.txt 
       &  
       \1 可以部分替换
       
       # 可以替换       
       sed -i 's/\(had\)....../\1doop/ig' str.txt

       
       

       
       
       

       