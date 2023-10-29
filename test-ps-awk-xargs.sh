#!/bin/bash

# ps aux用法 : 显示进程信息
ps aux

# awk用法：参考链接http://www.ruanyifeng.com/blog/2018/11/awk.html
# $ awk 动作 文件名 其中$0表示一整行、$1表示第一个空格或者tab隔开的第一个参数、以此类推。
echo "this is a echo" | awk '{print $0}'
echo "this is a echo" | awk '{print $1}'

# awk -F 指定分隔符(separator)
# NF: number of field 字段数 $NF表示最后一个字段  逗号表示用空格隔开
awk -F ':' '{print $1 , $NF}' demo.txt

# NR: number of row，行号
awk -F ':' '{print NR ")" $NF}' demo.txt

# awk '条件 动作' 文件名
# /usr/表示正则表达匹配usr的行
awk -F ':' '/usr/ {print $1}' demo.txt

# xargs命令将前面的标准输出转换为参数 参考链接：http://www.ruanyifeng.com/blog/2019/08/xargs-tutorial.html
echo "this is stdin" | xargs echo







