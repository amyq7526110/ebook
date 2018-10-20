#!/bin/bash

   #  "column totaler" 脚本的另一个版本

   #+ 这个版本在目标文件中添加了一个特殊的列(数字)

   #  这个脚本用了间接引用

   args=2

   E_WRONGARGS=65

   if [ $# -ne "$args" ] # 检查命令行参数是否是合适的个数

   then 

       echo "Usage:`basename $0` filename column-number"

       exit $E_WRONGARGS

   fi 


   filename=$1

   column_number=$2

   #  --=== 上边的这部分,与原来的脚本一样 =====#


   # 一个多行的 awk 脚本被调用,通过 ' ..... '

   # awk 脚本开始.
 
               # 间接引用
   awk "
   { total += \$${column_number}
   }
   END {
       print total
       }

       " "$filename"

   # ---------------------

   # awk 脚本结束

   # 间接的变量引用避免了一个内嵌awk脚本的引用

   #+ 一个shell 变量的问题

   exit 0
       



