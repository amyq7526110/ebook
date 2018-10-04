#!eq 10000 | sed -e 's/.*/export var&=ZZZZZZZZZZZZZZZZ'`"bin/bash

#  特殊的变量类型

   #  local variables 

   #    这种变量只有在代码块或者是函数中才可见

   #  environmental variables

   #    这种变量将改变用户接口和 shell 的行为.    

   #    在一般的上下文中,每个进程都有自己的环境,就是一组保持进程可能引用的信息的变量.这种情况下,shell 于一个一般进程是相同的. 
    
   #    每次当 shell 启动时,它都将创建自己的环境变量.更新或者添加新的环境变量,将导致 shell 更新它的环境,同时也会影响所有继承自这个环境的所有子进程(由这个命令   导致的). 
      
   #    注意:分配给环境变量的空间是受限的.创建太多的环境变量将引起空间溢出,这会引起问题.


   eval"`seq 10000 | sed -e 's/.*/export var&=ZZZZZZZZZZZZZZZZ/'`"
   du
  

   #   ...
   #   9999
   #   10000 | sed -e 's/.*/export var&=ZZZZZZZZZZZZZZZZ/': 文件名过长9999
   #   10000 | sed -e 's/.*/export var&=ZZZZZZZZZZZZZZZZ/': 文件名过长 

   #    如果一个脚本设置了环境变量,需要 export 它,来通知本脚本的环境,这是 export   命令的功能,关于 export 命令,具体见 11 章. 

   #    脚本只能对它产生的子进程 export 变量.一个从命令行被调用的脚本 export 的变量,将   不能影响调用这个脚本的那个命令行 shell 的环境. 
   

   #  positional parameters

       #  就是从命令行中传进来的参数,$0, $1, $2, $3... 

       #  $0就是脚本文件的名字,$1 是第一个参数,$2 为第 2 个...,参见[1](有$0 的说明),$9   以后就需要打括号了,如${10},${11},${12}...   两个值得注意的变量 $* 和 $@ (第 9 章有具体的描述),表示所有的位置参数. 

       #  作为用例,调用这个脚本至少需要 10 个参数,如 

       #   ./scriptname 1 2 3 4 5 6 7 8 9 10  



       MINPARAMS=10

       echo 
     
       echo "This name of this sccipt is \"$0\"."

       #  添加./ 是为了当前目录
  
       echo "The name of this script is \"`basename $0`\"." 

       #  去掉目录信息，具体见 basename 命令

       

       echo 

       if [ -n "$1" ]  # 测试变量被引用

       then 

           echo "Parameter # 1 is $1"  # "#" 没有转义

       fi	   
  
        
       if [ -n "$2" ]  # 测试变量被引用

       then 

           echo "Parameter # 2 is $2"  # "#" 没有转义

       fi	   

       if [ -n "$3" ]  # 测试变量被引用

       then 

           echo "Parameter # 3 is $3"  # "#" 没有转义

       fi	   
  
        
       if [ -n "$4" ]  # 测试变量被引用

       then 

           echo "Parameter # 4 is $4"  # "#" 没有转义

       fi	   


       if [ -n "$5" ]  # 测试变量被引用

       then 

           echo "Parameter # 5 is $5"  # "#" 没有转义

       fi	   
  
        
       if [ -n "$6" ]  # 测试变量被引用

       then 

           echo "Parameter # 6 is $6"  # "#" 没有转义

       fi	   

       if [ -n "$7" ]  # 测试变量被引用

       then 

           echo "Parameter # 7 is $7"  # "#" 没有转义

       fi	   
  
        
       if [ -n "$8" ]  # 测试变量被引用

       then 

           echo "Parameter # 8 is $8"  # "#" 没有转义

       fi	   


       if [ -n "$9" ]  # 测试变量被引用

       then 

           echo "Parameter # 9 is $9"  # "#" 没有转义

       fi	   
  
        
       if [ -n "${10}" ]  # 大于9 的参数必须在{}中

       then 

           echo "Parameter # 10 is ${10}"  # "#" 没有转义

       fi	   

       echo  "--------------------"

       echo "All the command-line parameter are: "$*""

       if [ $# -lt "$MINPARAMS" ]   # $# 是传到脚本里的位置参数的个数

       then 
        
	   echo

	   echo "This script needs at least $MINPARAMS conmand-line arguments !"

       fi

       echo 


#      {}标记法是一种很好的使用位置参数的方法.这也需要间接引用



       arg=$#
     
       lastarg=${!arg}

       echo $lastarg
   
       lastarg=${!#}  

       echo $lastarg

                      # 注意 lastarg=${!$#} 将报错 

 


       exit 0
       









