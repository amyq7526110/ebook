#!/bin/bash

#    set

#   set 命令用来修改内部脚本变量的值.一个作用就是触发选项标志位来帮助决定脚本的行为.另一个应用就是以一个命令的结果(set `command`)来重新设置脚本的位置参数.脚本将会从命令的输出中重新分析出位置参数.
# 
#    Example 11-15 使用 set 来改变脚本的位置参数


    # scirpt "set test"

    # 使用 3 个 命令行参数来调用这个脚本

    # 比如 "./set-test  one two three"

    echo 

    echo "Postitional parameters before set \`uname - a\` :" # uname 命令打印操作系统名

    echo "Command-line argument # 1 = $1"

    echo "Command-line argument # 2 = $2"

    echo "Command-line argument # 3 = $3"

    set `uname -a`   

    #  把`uname -a` 的命令输出设置

    #  为新的位置参数

    echo $_   #   这要看你的 unmae -a 输出了,这句打印出的就是输出的最后一个单词.

    #  在脚本中设置标志.

    echo "Positional parameters after set \`uname -a\` :"

    # $1, $2, $3, 等等. 这些位置参数将被重新初始化为`uname -a`的结果
 
    echo "Field # 1 of 'uname -a' = $1"

    echo "Field # 2 of 'uname -a' = $2"

    echo "Field # 3 of 'uname -a '= $3"

    echo ------

    echo $_      # ----

    echo 

    exit 0 

     



 
  
