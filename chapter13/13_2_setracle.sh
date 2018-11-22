#!/bin/bash 


# erase.sh: 在读取输入时使用"stty"来设置一个擦除字符.

   echo -n "What is your name?" 
   read name                     # 来试一试退格

                                 #+ 来删除输入的字符
                                 
                                 # 有什么问题

   echo  "Your name is $name"

   stty erase '#'                # 将 "hashmark"(#)设置为退格键

   echo -n "What is your name?" 
   read name

   echo "Your name is $name"

   stty erase '^?'

   exit 0
    

   
