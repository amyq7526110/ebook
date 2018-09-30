#!/bin/bash

#Example 2-1 清除:清除/var/log 下的 log 文件
#Cleanup
#当然要使用 root 身份来运行这个脚本

 cd /var/log
 cat /dev/null > messages
 cat /dev/null > wtmp
 echo "Logs cleaned up."
