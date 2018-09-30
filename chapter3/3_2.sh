#!/bin/bash

#  rpm-check.sh

#   这个脚本目的是为了描述，列表，和确定是否可以安装一个rpm 包

#   在一个文件中保存输出

#   这个脚本用一个代码块来展示

    SUCCESS=0

    E_NOARGS=65


    if [ -z $1 ]

    then

        echo "Usage:`basename $0`  rpm-file."
      
        exit $E_NOARGS

    fi


    {
       echo 

       echo "Archive Description:"

       rpm -qpi $1   # 查询说明

       echo

       rpm -i --test $1 # 查询 rpm包 是否可以被安装

       if [ $? -eq  $SUCCESS    ]
   
       then

           echo "$1 can be installed"

       else   


           echo "$1 connot be installed"

       fi
   

       echo

    }  > "$1".test  # 把代码块中的所有输出重定向到文件中


    echo "Result of rpm test in file "$1".test."


    # 查看rpm 的 man 帮助页 查看 rpm 的 选项

    exit 0

#     注意: 与()中的命令不同的是,{}中的代码块将不能正常地开启一个新 shell



