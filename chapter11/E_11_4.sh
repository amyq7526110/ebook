#!/bin/bash

  # read-novar.sh

  echo

  # ------------------#

  echo -n "Enter a value: "

  read var

  echo "\"var\" = "$var""


  #  到此为止,于期望相同

  # -------------------------- #



  echo



  # ------------------------------------------------------------------- #

  echo -n "Enter another value: "

  read     # 没有变量分配给'read'命令.因此...

           #+输入将分配给默认变量,$REPLY

  var="$REPLY"	   

  echo "\"var\"  = "$var""

  # 这部分代码和上边的代码等价.

  # ------------------------------------------------------------------- #
   
  

  echo 


  exit 0







