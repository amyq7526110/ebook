#!/bin/bash


   #  一个变量是否被声明

   #+ 将影响默认选项的触发

   #+ 甚至于这个变量被设为空

   username0=

   echo "username0 has been declare,but is set to null."

   echo "username0 = ${username0-`whoami`}"

   # 将不会echo


   echo

   echo username1 has not been declared.

   echo "username1 = ${username1-`whoami`}"

   # 将会echo

   username2=

   echo "username2 has been declared,but is set to null."

   echo "username2 = ${username:-`whoami`}"

   #

   #将会 echo 因为使用的是:-而不是 -.
   # 和前边的第一个例子好好比较一下.


   #


   #  再来一个

   variable=

   #  声明变量，但为空

   echo "${variable-0}"     #  {no output}

   echo "${variable:-1}"    #  1


   #

   unset variable

   echo "${variable-2}"       #  2

   echo "${variable:-3}"      #   3


   #  如果脚本中并没有传入命令行参数,那么 default parameter 将被使用.

    DEFAULT_FILENAME=generic.data

    filename=${1:-$DEFAULT_FILENAME}

    echo "$filename"

    # 如果没有参数被传递进来,那么下边的命令快将操作

    #+ 文件"generic.data"

   exit 0




