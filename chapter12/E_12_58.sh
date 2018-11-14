#!/bin/bash

# 使用 m4

# m4.sh 使用m4 宏处理器

# 
 # 字符操作
 string=abcdA01
 echo "len($string)" | m4
 echo "substr($string,4)" | m4
 echo "regexp($string,[0-1][0-1],\&Z)" | m4

 # 算术操作
# 7
# A01
# 01Z
 echo "incr(22)" | m4
# 23
 echo "eval(99 / 3)" | m4
# 33

 exit 0
#######
