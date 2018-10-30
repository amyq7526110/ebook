#!/bin/bash

   while getopts ":abcde:fg" Option

   # Initial declaration.

   # 开始的声明.

   # a, b, c, d, e, f, 和 g 被认为是选项(标志).

   # e 选项后边的:提示,这个选项带一个参数.
   
   do 
       case $Option in

       a) # # Do something with variable 'a'.

          echo "a";;
       b) echo "b";;
       c) echo "c";;
       d) echo "d";;
       e) echo "e:f";;
       f) echo "f";;
       g) echo "g";;
       *)  echo haha  
           break ;;

      esac 
   done

   shift $(($OPTIND - 1))





# 所有这些远没有它看起来的那么复杂.<嘿嘿>
