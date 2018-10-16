#!/bin/bash


# 参数的替换和拓展

#  下边的表达式是使用 expr 字符串匹配操作的补充(见 Example 12-9).
#  这些特定的使用方法绝大多数情况都是用来分析文件目录名.

# 变量长度/子串删除

#     ${#var}

#     字符串长度($var 的字符数量).对于一个数组,${#array}是数组中第一个元素的长度.
#     一些例外:

#     ${#*}和${#@}将给出位置参数的个数.

#     对于数组来说${#array[*]}和${$#array[@]}将给出数组元素的个数.



  # length.sh

  E_NO_ARGS=65

  if [ $# -eq 0 ]    # 这个demo脚本必须有命令行参数

  then 

       echo  "Please invoke this script with one or more  command-line arguments."

       exit  $E_NO_ARGS


  fi

  var01=abcdEFGH28ij

  echo "var01 = $var01"

  echo "Length of var01 = ${#var01}"

  #  现在,让我们试一试在里面嵌入一个空格

  var02="abcd EFGH28ij"

  echo "var02 = ${var02}"

  echo "Length of var02 = ${#var02}"

  echo "Number of command-line argument passed to script = ${#@}"

  echo "Number of command-line argument passed to script = ${#*}"


  exit 0





