#!/bin/bash

   #  de-rpm.sh 解包一个 rpm 归档文件

   : ${1?"Usage: `basename $0` target-file"}

   # 必须指定'rpm'归档文件名作为参数

   Tempfile=$$.cpio     # Tempfile 必须是一个"唯一"的名字

                        # $$ 是这个脚本的进程 ID


   rpm2cpio < $1  > $Temfile               # 将 rpm 归档文件转换为 cpio 归档文

   cpio --make-directories -F $Tempfile -i # 解包 cpio 归档文件

   rm -f $Tempfile                         # 删除 cpio 归档文件

   exit 0


   # 练习:              1) "target-file" 是否存在
   # 添加一些代码来检查 2) 这个文件是否是一个 rpm 归档文件.
   #+
   # 暗示:              分析 'file' 命令的输出.




