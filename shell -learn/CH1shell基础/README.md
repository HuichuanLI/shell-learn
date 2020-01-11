# shell-learn
李汇川的shell复习教程
## 自定义变量

### 变量名遵循原则 
- 变量是由任何字母、数字和下划线组成的字符串，且不能以数字开头 
- 区分字母大小写，例如Var1和varl是不同的 
- 变量、等号值中间不能出现任何空格
- 当一条命令或脚本执行时，后面可以跟多个参数我们使用位置参数 变量来表示这些参数

### 位置参数

![](./photo/01.png)

[example](./location_var.sh)

[example_function](./func_sh.sh)

Linu×是一个多租户的操作系统，针对不同的用户都会有一个专有的 运行环境

![](./photo/03.png)

![](./photo/02.png)

### 退出状态码

- 所有的sh命令都使用退出状态码来告知sh它已执行完毕 
- 退出状态码是一个0一255的整数值 
- Linu×提供了一个$?来捕获退出状态码的值

![](./photo/04.png)

[exit_code](./exit_code.sh)

### If 语句


[if_then](./if_then.sh)


[if_then-lese](./if_then_else.sh)

[if_elif_else](./if_elif_else.sh)
