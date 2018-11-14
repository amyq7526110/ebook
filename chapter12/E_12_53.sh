#!/bin/bash 

 # exercising-dd.sh

 # 由 Stephane Chazelas 编写.
 # 本文作者做了少量修改.

 # 练习 dd

 input_file=$0       # 脚本本身

 output_file=log.txt

 n=3

 p=5

 dd if=$input_file of=$output_file bs=1 skip=$((n-1)) count=$((p-n+1)) 2>/dev/null


 # 从脚本中把位置 n 到 p 的字符提取出来.

 echo -n "hello world" | dd cbs=1 conv=unblock 2> /dev/null
 
 # 垂直的 echo "hello world" .

 exit 0


