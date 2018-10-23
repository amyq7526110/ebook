#!/bin/bash 

#  如果在 for 循环的[list]中有通配符(*和?),那将会产生文件名扩展,也就是 file globbing.

#  list-glob.sh  产生[list]在 for循环中使用"globbing"

   echo

   for file in *

   #    ^ 在表达式中识别file globbing 时

   #+   Bash 将执行文件拓展

   do

      ls -l "$file"      #  列出所有在$PWD(当前目录)中的所有文件.

      # 回想一下,通配符"*"能够匹配所有文件,

      #+ 然而,在"globbing"中,是不能比配"."文件的.


      # If the pattern matches no file, it is expanded to itself.
      # 如果没匹配到任何文件,那它将扩展成自己.
      # 为了不让这种情况发生,那就设置 nullglob 选项

      #+ (shopt -s nullglob).
      # Thanks, S.C.

   done

   echo; echo

   for file in [jx]*

   do
     
      rm -rf $file   # 只删除当前目录下以"j"或"x"开头的文件.

      echo "Removeed file \"$file\""

   done

   exit  0



