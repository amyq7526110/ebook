#!/bin/bash

#      转义(\)
#     -----------
#     转义是一种引用单个字符的方法.一个具有特殊含义的字符前边放上一个转义符(\)就告诉 shell  这个字符失去了特殊的含义.
#     值得注意的是,在某些特定的命令和工具中,比如 echo 和 sed,转义符往往会起到相反的效果,
#     它反倒有可能引发出这个字符特殊的含义.
#     对于特定的转义符的特殊的含义

#     在 echo 和 sed 中所使用的

#     \n
#     意味着新的一行

#     \r
#     回车

#     \t
#     tab 键

#     \v
#     vertical tab(垂直 tab),查前边的 Ctl-K

#     \b
#     backspace,查前边的 Ctl-H

#     \a
#     "alert"(如 beep 或 flash)

#     \0xx 转换成 8 进制 ASCII 解码,等价于 oxx


#    escaped.sh : 转义符


     echo;echo


     echo "\v\v\v\v"   # 逐字的打印\v\v\v\v.

     #  使用-e选项的 echo 命令来打印转义符

     echo  "================"
 
     echo  "VERTICAL TABS"
    
     echo   -e  "\v\v\v\v"  # Prints 4 vertical tabs.

     echo  "================"


     echo "QUOTATION  MARK"  

     echo -e "\042"         # 打印"(引号，8进制的ASCLL码 就是 42)。

     echo  "================"

     # The $'\X' construct  makes the -e option unnecessary.

     # 如果使用$'\X'结构，那-e 选项就不必要了

     echo $'\n'       # 新行

     echo $'\a'       # Alert(beep).


     echo  "================"

     echo  "QUOTATION MARKS"

     #  版本2以后Bash 允许$'\nnn'结构

     #  注意  '\nnn \是8进制的'

     echo $'\t \042 \t'   # Quote(") framed by tabs

     #  当然 也可以使用16进制的值，使用$'\xhhh'结构

     echo $'\t \x22 \t'   # Quote(") framed by tabs

     echo "=================="

     echo



     #  分配 ASCLL 字符到变量中

     #  -----------------

     quote=$'\042'        # \042 是",分配到变量中

     echo "$quote This is a quote string,$quote and this lies outside the quotes"


     echo


     #  Concatenating ASCLL chars in a variable


     #  变量中的连续的ASCLL char

     triple_underline=$'\137\137\137'  # 137 是 8进制的ACSLL码'_'


     echo "$triple_underline UNDERLINE $triple_underline"
     
     echo


     ABC=$'\101\102\103\010'           # 101,102,103 是ACSLL 码的 A B C


     echo $ABC

     echo;echo

     escape=$'\033'                    # 033 是8进制码 for escape

     echo "\"escape\"echoes as $escape"

     # "escape"  echoes as               没有变量输出

     echo;echo

     exit 0

     
























