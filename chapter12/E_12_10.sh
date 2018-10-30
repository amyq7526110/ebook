#!/bin/bash

#   时间/日期 和计时

#   date

#   直接调用, date 就会打印日期和时间到 stdout 上. 

#   这个命令有趣的地方在于它的格式化和分析选项上.

    # 练习`date`命令

    echo "The number of days since the year's beginning is `date +%j`."

    #  需要在调用格式的前边的加上一个'+'号。

    #  %j 给出的是本年度的第几天

    echo  "The number of seconds elapsed  since 01/01/1970 is `date +%s` "

    # %s 将产生从"Uinx 元年" 到现在为止的秒数,yields number of seconds of since "UNIX epoch" begin

    #+ 但是这东西有用吗

    profix=temp

    suffix=$(date +%F)  # 'date' 命令的"+%F" 选项是GUN-特性

    filename=${profix}.$suffix  

    echo $filename

    #  这是一种非常好的产生 "唯一" 的临时文件的办法,

    #  甚至比使用 $$ 都强.

    # 如果想了解 'date' 命令的更多选项, 请查阅这个命令的 man 页.

    exit 0


