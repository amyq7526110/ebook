#!/bin/bash 

    #  把一个文件的内容全部转换为大写

    E_BadArgs=65

    if [ -z  "$1" ]

    then 
       
        echo "Usage: `basename $0` filename." 

	exit $E_BadArgs

    fi	


    tr a-z A-Z < "$1"

    #  与上面相同但是 使用了POSIX字符标记方法

    #  tr '[:lower:]' '[:upper:]'

    #  Thank 


    exit 0
