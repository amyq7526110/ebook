#!/bin/bash
  
#   脚本行为
#   source, . (点命令)
#   这个命令在命令行上执行的时候,将会执行一个脚本.在一个文件内一个 source file-name 将会加载 file-name 文件.source 一个文件(或点命令)将会在脚本中引入代码,并附加到脚 本中(与 C 语言中的#include 指令的效果相同).最终的结果就像是在使用"sourced"行上插 入了相应文件的内容.这在多个脚本需要引用相同的数据,或函数库时非常有用.
   
    . data-file # 加载一个数据文件

    #  与"source data-file" 效果相同，但是更具可移植性

    #  文件"data-file" 必须存在于当前工作目录

    #+ 因为这个文件时 使用`basename`来引用的

    # 现在，引用这个数据文件的一些数据

    echo "variable1 (from data-file) = $variable1"

    echo 

    echo "variable3 (from data-file) = $variable3"

    echo 

    let "sum = $variable2 + $variable4"

    echo "message1 (from data-file) is \"$message1\""

    echo 

    echo "message1 (from data-file) is \"$message2\""

    #  注意 ：将双引号转义


    print_message This is the message-print function in the data-file.

    exit 0
