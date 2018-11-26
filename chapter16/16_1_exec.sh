#!/bin/bash


#  exec <filename 命令会将 stdin 重定向到文件中. 从这句开始,
#  后边的输入就都来自于这个文件了, 而不是标准输入了(通常都是
#  键盘输入). 这样就提供了一种按行读取文件的方法, 并且
#  可以使用 sed 和/或 awk 来对每一行进行分析.
#  Example 16-1 使用 exec 重定向标准输入

# 使用'exec' 重定向标准输入


exec 6<&0   # 将文件描述符 #6 与 stdin 链接起来

            # 保存 stdin

exec < data.list             # stdin 被文件"data.list" 所链接

read  a1      # 读取文件data.list 的第一行

read  a2      # 读取文件data.list 的第二行

echo 

echo "Following lines read from file"

echo "-------------------------------"

echo $a1

echo $a2


echo;echo;echo


exec 0<&6 6<&-

#   现在将stdin 从 fd # 6 中恢复,因为刚才我把stdin 重定向到#6了

#+  然后关闭fd #6 （6<&-） 好让这个描述符 继续被其他进程所使用

# <&6 6<&-  # 这么做也可以


echo -n "Enter data"

read b1  # 现在“read” 已经恢复正常了 就是从 stdin 中读取

echo "Input read from stdin "

echo "-----------------------"

echo "b1 = $b1"


echo 

exit 0






 

