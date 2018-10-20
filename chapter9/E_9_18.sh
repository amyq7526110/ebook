#!/bin/bash

    #  rfe.sh  重命名文件拓展名

    # Usage rfe old_extension new_extension


    #   例子

    #    rfe  gif  jpg

    E_BADARGS=65

    case $#  in 

    0|1)            #  "|"  在这里是或操作

    echo "Usage: `basename $0` old_extension new_extension"

    exit $E_BADARGS   #  如果只有0个或1个参数,那么就退出

    ;;

    esac

    for filename in *.$1

    # 以第一个参数为拓展名的全部文件的列表

    do

      mv $filename  ${filename%$1}$2

      #  筛选出的文件中先去掉以第一参数结尾的扩展名

      #+ 然后作为扩展名把第 2 个参数添加上.

    done

    exit 0

