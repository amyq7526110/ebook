#!/bin/bash


 #  "contine N" 命令，将让N层的循环全部被continue

  for outer in I II III IV V  # 外部循环

  do 
     
     echo;echo -n "Group $outer:"

     # -------------------

     for inner in `seq 10`   # 内部循环

     do 
       
       if [  "$inner" -eq 7  ]

       then 

           continue 2  # continue2层，就就是到outer 循环上 

	               # 将"continue 2" 替换为一个单独的"continue"

		       # 来看一下一个正常的循环的行为

       fi

       echo -n "$inner "  # 7 8 9 10 将不会被echo 

     done

   done

   echo ;echo

   exit 0




		       
