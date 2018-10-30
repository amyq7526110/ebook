#!/bin/bash

  # kill-byname.sh: 通过名字kill进程

  # 与脚本kill-process.sh 相比较

  # 例如 ：

  #+ 试一下 "./kill-byname.sh xterm" --
  #+ 并且查看你系统上的所有 xterm 都将消失.
  
  # 警告:
  
  
  
  # -----
  # 这是一个非常危险的脚本.
  # 运行它的时候一定要小心. (尤其是以 root 身份运行时)
  #+ 因为运行这个脚本可能会引起数据丢失或产生其他一些不好的效果.

  E_BadArgs=66

  if test -z "$1"  # 没有参数

  then 

      echo "Usage: `basename $0` Process(es)_to_kill"

      exit $E_BadArgs

  fi

  Process_Name="$1"

  ps ax | grep "$Process_Name"  | awk '{print $1}' | xargs -i kill{} 2&> /dev/null

  
  
  
  
  
 # -----------------------------------------------------------
 #
 # 注意:

 # -i 参数是 xargs 命令的"替换字符串"选项.

 # 大括号对的地方就是替换点.

 # 2&>/dev/null 将会丢弃不需要的错误消息.
 # 
 # -----------------------------------------------------------


  exit $?



