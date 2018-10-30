#!/bin/bash

  # 从/var/log/messagesGenerates 的尾部开始

  # 产生当前目录下的一个lof文件

  # 注意：如果这个脚本被一个一般用户调用的话

  # /var/log/messages 必须是全部可读的

  #   #  root chmod 644 /var/log/messages

  Lines=5

  ( date ; uname -a ) >> logfile

  # 时间和机器名

  echo -------------------------------------- >> logfile

  tail -$Lines /var/log/messages | xargs | fmt -s >> logfile

  echo >> logfile

  echo >> logfile

  exit 0

  #  注意：

  #  ---

  # 在源文件中 的任何不匹配的引号(包括单引号和双引号)
  #+都会给xrags 造成麻烦

  # 可以使用下面的命令来替换这行

  tail -$LINES /var/log/messages | tr -d "\"'" | xargs | fmt -s >> logfile



