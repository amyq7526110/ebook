#!/bin/bash

   #  在给定的目录中找出 sh 和 Bash 脚本文件:
   
   #   Dirdectory=/usr/local/bin
   Directory=`pwd`

   Keyword=Bourne

   #  Bourne 和 Bourne-Again shell 脚本

   file $Directory/*  | fgrep $Keyword

   # 输出：


