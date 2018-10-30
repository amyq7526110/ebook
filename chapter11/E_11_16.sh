#!/bin/bash

   variable="one two three four five"

   set  -- $variable 

   # 将位置参数的内容设为变量"$variable"的内容.

   first_param=$1

   second_param=$2

   shift; shift  # Shift past first two positional param

   remaining_params="$*"

   echo 

   echo "first parameter = $first_param"          #  one 

   echo "second parameter = $second_param"        #  two

   echo "remaining parameter = $remaining_params" #  three four five

   echo; echo


   # 再来一次


   set -- $variable

   first_param=$1

   second_param=$2

   echo "first parameter = $first_param"    #    one

   echo "second_parameter = $second_param"  #    two

   # =================================================

   set -- 

   # Unsets positional parameters if no variable specified.

   # 如果没有指定变量，那么将会unset 所有的位置参数
   

   first_param=$1

   second_param=$2

   echo "first parameter = $first_param"    #   null

   echo "second_parameter = $second_param"  #   null


   exit 0









