#!/bin/bash 


   #  cpio   

   #  这个特殊的归档拷贝命令(拷贝输入和输出)现在已经很少能见到了,
   #  因为它已经被 tar/gzip 所替代了.现在这个命令只在一些比较特殊
   #  的地方还在使用,比如拷贝一个目录树.

   #  用'cpio' 拷贝目录树

   #  使用'cpio' 的优点

   #  加速copy，比通过管道使用'tar'命令快一点

   #  很适合拷贝一些 'cp' 命令

   #+ 搞不定的的特殊文件(比如名字叫 pipes 的文件, 等等)

   Args=2

   E_BadArgs=65

   if [  $# -eq "$Args" ]

   then 

       echo "Usgae : `basename $0` source destination "

       exit $E_BadArgs

   fi

   

   find "$source" -depth | cpio -admvp "$destination"


   # 阅读 'find' 和 'cpio' 的 man 页来了解这些选项的意义.
   
   
   # 练习:
   # -----
   
   # 添加一些代码来检查 'find | cpio' 管道命令的退出码($?)
   #+ 并且如果出现错误的时候输出合适的错误码.
   
   exit 0
   #########
  
