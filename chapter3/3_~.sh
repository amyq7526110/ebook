#!/bin/bash


#  ~ home 目录,相当于$HOME 变量 ~bozo 是 bozo 的 home 目录,并且 ls ~bozo 将列出其中的

#    内容. ~/就是当前用户的 home 目录,并且 ls ~/将列出其中的内容,如:

   echo ~   # /root

   echo ~/  # /root/

   echo ~:  # /root:

   echo ~nonexistent-user  # ~nonexistent-user

#  ~+  当前工作目录,相当于$PWD 变量

   echo ~+  # /root/ebook

#   ~- 之前的工作目录,相当于$OLDPWD 内部变量.
     
#   cd ~-

#   =~ 用于正则表达式,这个操作将在正则表达式匹配部分讲解,只有 version3 才支持.





