#!/bin/bash

#   使用 if test condition-true 这种形式和 if[condition-true]这种形式是等价的.向我们前边所说的"["是 test 的标记.并且以"]"结束.在 if/test 中并不应该这么严厉,但是新版本的 Bash需要它.

#   注意:test 命令是 Bash 的内建命令,用来测试文件类型和比较字符串.因此,在 Bash 脚本中,test并不调用/usr/bin/test 的二进制版本(这是 sh-utils 工具包的一部分).同样的,[并不调用/usr/bin/[,被连接到/usr/bin/test.


   echo 


   if test -z "$1"

   then 

       echo "NO command-line arguments."

   else 

       echo "First command-line argument is $1."

   fi


   echo


   if /usr/bin/test -z "$1"  # 与内建的test结果一样

   then 
      
       echo "NO command-line arguments."

   else 

       echo "First command-line argument is $1."

   fi


   echo 

   if [ -z "$1" ]    #  与上面的代码的作用相同

   #  if [ -z "$1"      应该工作，但是

   #+ bash 相应一个缺少关闭中括号错误消息

   then

       echo "NO command-line arguments."

   else 

       echo "First command-line argument is $1."

   fi


   echo 
       
  # if /usr/bin/[ -z "$1" ]  #再来一个与上面作用相同

     if /usr/bin/[ -z "$1"    # 工作，但是给一个错误信息

                               # 注意：

			       #  This has been fixed in Bash ,version 3.x

			       # 在 ver 3.x 上,这个 bug 已经被 Bash 修正了.

   then

       echo "NO command-line arguments."

   else 

       echo "First command-line argument is $1."

   fi


   echo 


   exit 0
 
 
 


