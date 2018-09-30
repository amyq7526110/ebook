#!/bin/bash

# Example 2-3. cleanup:一个增强的和广义的删除 logfile 的脚本

# clean up  3

# Warning:
# -----

log_dir=/var/log

ROOT_UID=0     # $UID 为0时，用户才具有根用户的权限

LINES=5        # 默认保存行数

E_XCD=66       # 不能cd到目录的 退出 返回值

E_NOTROOT=67   # 非根用户的报错 退出 返回值


#  当然要使用根用户来运行
 
    if [  $UID  -ne $ROOT_UID  ]

    then    

        echo "Must be root to run this script."
    
        exit $E_NOTROOT

    fi

#    if [ -n $1 ]
    
#   检测是否有命令行参数  

#    then 

#         line=$1
 
#    else

#         line=$LINES #不指定则使用默认   

#    fi
  
  
#    更好的方法 来检测命令行参数


      E_WRONGARGS=65  # 非数值参数错误

      case "$1" in
      ""   ) lines=$LINES 
      ;;
      *[!0-9]*) echo "Usage:`basename $0`file-to-cleanup";exit $E_WRONGARGS 
      ;;
      *)lines=$1
      esac
     
      
      cd $log_dir

      if [ `pwd` != "$log_dir" ]  # 或者if [  "$PWD"  != "$log_dir"  ] 

                                  # 不在 /var/log/中？  

      then
      
           echo "Can't change to $log_dir"

           exit $E_XCD

      fi   #在处理log file 之前，确认当前目录是否正确

      
#   更有效率的做法

#     cd /var/log || { 
  
#     echo "Cannot change to  necessary directory." >&2 
    
#     exit $E_XCD

# }

     tail -$lines access_log >  acc.temp  #保存 log file的最后部分

     mv acc.temp  access_log     # 变为新的log 目录

 
#   cat /dev/null > access_log  不再需要了，上面的更好

 
#   cat /dev/null > wtmp  ,  :> wtmp  > wtmp 有相同的作用

    echo "Logs cleaned up."

    exit 0 












