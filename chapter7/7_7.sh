#!/bin/bash 


    # zmore

    # 使用"more"来查看gzip 文件

    NOARGS=65

    NOTFOUND=66

    NOTGZIP=67

    if [ $# -eq 0 ]  # if [ -z "$1" ]同样的效果

    #  $1 是可以存在的,比如:zmore "" arg2 arg3

    then 
       
        echo "Usage: `basename $0` filename" >&2

	#  指定上面那句错误消息到stderr

	exit $NOARGS

        #   脚本返回65作为退出码

    fi	

    filename=$1

    if [ ! -f "$filename" ]  # 将filename ""起来，允许可能的空白
    
    then 

        echo "File $filename not found!" >&2

	#  指定上面那句错误消息到stderr

        exit $NOTFOUND

     fi	


    if [  ${filename##*.} != "gz" ] 
 
    #   在变量的替换中使用中括号
    
    then 

        echo "Fiel-$1 is not a gzip ped file!"  >&2

	exit  $NOTGZIP
          
    fi


    zcat $1 | more

    # 使用过滤命令"more"

    # 如果你想的话可以 使用less

    exit $?  # 脚本将返回 pipe 的结果作为退出码

    # 事实上,不用非的有"exit $?",但是不管怎么说,有了这句,能正规一些
    # 将最后一句命令的执行状态作为退出码返回







