#!/bin/bash

   Limit=19  # 上限

   echo 

   echo "Printing Numbers 1 through 20 (but not 3 and 11)"

   a=0

   while [  $a -le "$Limit" ]

   do
      
      a=$(($a+1))

      if [ "$a" -eq 3 ]  || [ "$a" -eq 11 ]  # 除了3和11

      then 

           continue

      fi

      echo -n "$a "   # 等到$a 等于 3 和 11 的时候，这句将不会执行

   done

   # 练习:
   # 为什么循环会打印出 20?
  
   echo; echo
  
   echo Printing Numbers 1 through 20, but something happens after 2.

   # # 同样的循环, 但是用'break'来代替'continue'.

   # Same loop,but substituting 'break' 来代替 'continue'

   a=0

   while [  "$a" -le "$Limit" ]

   do

      a=$(($a+1))

      if [ "$a" -gt 2 ]

      then 

         break # 将会逃出这个循环

      fi

      echo -n "$a "

  done

  echo ;echo ;echo

  exit 0
