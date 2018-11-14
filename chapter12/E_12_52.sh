#!/bin/bash 

# 一个拷贝自身的脚本

# self-copy.sh

file_subscript=copy

dd if = $0 of=$0.$file_subscript 2> /dev/null

#  阻止dd产生的消息

exit $?
