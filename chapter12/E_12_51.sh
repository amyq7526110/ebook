#!/bin/bash 


#  getopt
#  getopt  命令将会分析以破折号开头的命令行选项. 这个外部命令与 Bash 的内建命令
#  getopts 作用相同. 通过使用 -l 标志, getopt 可以处理长(多字符)
#          选项, 并且也允许参数重置.

   #  使用getopt

   # 尝试使用下边的不同的方法来调用这脚本:
   #
   # sh ex33a.sh -a
   # sh ex33a.sh -abc
   # sh ex33a.sh -a -b -c
   # sh ex33a.sh -d
   # sh ex33a.sh -dXYZ
   # sh ex33a.sh -d XYZ11
   # sh ex33a.sh -abcd
   # sh ex33a.sh -abcdZ
   # sh ex33a.sh -z
   # sh ex33a.sh a

   # 解释上面每一次调用的结果


   E_OPTERR=65

   if [  $# -eq 0 ]

   then   # 脚本需要至少一个命令行参数.

       echo "Usage $0-[options a,b,c]"

       exit $E_OPTERR

   fi

   set -- `getopt "abcd:" "$@"`

   # 为命令行参数设置位置参数.
   # 如果使用 "$*" 来代替 "$@" 的话会发生什么?

   while [  ! -z "$1" ]

   do 
      
      case "$1" in 
       -a) echo "Option 'a'";;
       -b) echo "Option 'b'";;
       -c) echo "Option 'c'";;
       -d) echo "Option 'd'$2";;
       *)break;;
      esac
      shift

   done   
       
 #  通常来说在脚本中使用内建的 'getopts' 命令,
 #+ 会比使用 'getopt' 好一些.
 #  参见 "ex33.sh".

 exit 0 













      

