#!/bin/bash 

   #  返回直角三角形的斜边.
   # ( 直角边长的平方和,然后对和取平方根)

   ARGS=2  # 需要将两个直角边作为参数传递进来

   E_BADARGS=65  #  错误的参数值.

   if [  $# -ne "$ARGS" ]

   then 

       echo "Usage: `basename $0` side_! side_2"

       exit $E_BADARGS

   fi

   AWKSCRIPT='{printf("%3.7f\n",sqrt($1*$1 + $2*$2))}'

   #   命令 / 传递给 awk 的参数

   # 现在, 将参数通过管道传递给 awk.

   echo -n "Hypotenuse if $1 and $2 = "

   echo $1 $2 | awk "$AWKSCRIPT"

   exit 0







