#!/bin/bash

   #   export 

   #   export 命令将会使得被 export 的变量在运行的脚本(或 shell)的所有的子进程中都可用.不幸的是,没有办法将变量 export 到父进程(就是调用这个脚本或 shell 的进程)中.关于 export 命令的一个重要的使用就是用在启动文件中,启动文件是用来初始化并且设置环境变量,让用户进程可以存取环境变量.

   #   Example 11-18 使用 export 命令传递一个变量到一个内嵌 awk 的脚本中

   #   使用 export 命令传递一个变量到一个内嵌 awk 的脚本中 
  
   # 这是"求列的和"脚本的另外一个版本(col-totaler.sh)

   #+ 那个脚本可以把目标文件中的指定的列上的所有数字全部累加起来,求和.

   # 这个版本将把一个变量通过 export 的形式传递到'awk'中 . . .
   
   #+ 并且把 awk 脚本放到一个变量中.


   ARGS=2

   E_WrongArgs=65

   if [ $# -ne "$ARGS" ]   # 检查命令行参数的个数

   then 

       echo "Usage: `basename $0` filename column-number"

       exit $E_WrongArgs

   fi

   filename=$1

   column_number=$2

   #====== 上边的这部分，与原始脚本一样 =====#

   export column_number

   # 将列号通过export 出来，这样后边的进程就可用了

   # -----------------------------------------

   awkscript='{ total += $ENVIRON["column_number"]}
   END{print total}'

   # 是的，一个变量可以保存一个awk脚本

   # -----------------------------------

   # 现在运行脚本

   awk "$awkscript" "$filename"

   exit 0 


