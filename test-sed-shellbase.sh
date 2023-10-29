#!/bin/bash

# 格式：sed 参数、范围、操作 操作对象   参考链接：https://juejin.cn/post/6844903848885092365、https://coolshell.cn/articles/9104.html
# -n 忽略操作过程
# 操作p d w 打印 删除 写入
sed -n '1,2 p' demo.txt
sed -n '2,5 w output.txt' demo.txt


# 在源文件直接修改 ".bak"指定备份文件的扩展名
sed -i ".bak" '2,3 p' demo.txt
# 或者使用重定向符号 但似乎不能重新写回源文件
sed -n '2,3 p' demo.txt > temp.txt

