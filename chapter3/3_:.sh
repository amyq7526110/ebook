#!/bin/bash 

#  :  空命令,等价于"NOP"(no op,一个什么也不干的命令).也可以被认为与 shell 的内建命令(true)作用相同.":"命令是一个 bash 的内建命令,它的返回值为 0,就是 shell 返回的 true.

    : 
    echo $? # 0

    #  死循环

    while :
    
    do 

       echo operation 1

    done

#   与下面相同

    while true 

    do

       echo operation 1


    done 

#   在 if/then 中的占位符,如:

    if  false 
 
    then :  # 什么都不做引出分支

    else

        echo haha

    fi 	 


#  在一个 2 元命令中提供一个占位符,具体见 Example 8-2,和"默认参数".如:

    : ${username=`whoami`}

      ${username=`whoami`}

#  如果没有":"的话,将给出一个错误,除非"username"是个命令
#  在 here document 中提供一个占位符,见 Example 17-10.


#  使用 参数替换 来评估字符串变量 如


   : ${HOSTNAME?} ${USER?} ${MAIL?}

#  如果一个或多个必要的环境变量没被设置的话
#+ 就打印错误信息

  
#  变量拓展/子串替换
#  和 > 结合使用时 把一个文件截断到0长度，除非没有修改他的权限
#  如果文件在之前并不存在，那么就创建它 如：

   : > data.xxx  # 文件data.xxx 就被清空了

#  与 cat /dev/null > data.xxx 作用相同
#  然而，这不会产生一个新的进程

#  注意: 这只适用于正规文件,而不是管道,符号连接,和某些特殊文件.

#  也可能用来作为注释行,虽然我们不推荐这么做.使用#来注释的话,将关闭剩余行的
#  错误检查,所以可以在注释行中写任何东西.然而,使用:的话将不会这样.如:

   : This is a comment thar generates an error,(if [ $x -eq 3] ).

   : This is a comment thar generates an error,\(if [ $x -eq 3] \).

#  ":"还用来在/etc/passwd 和$PATH 变量中用来做分隔符.

   echo $PATH

#  /usr/local/bin:/bin:/usr/X11R6/bin:/sbin:/usr/sbin:/usr/games





 


 




    


    

