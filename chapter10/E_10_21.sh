#!/bin/bash

  # breal-levels.sh  退出循环

  # "break N"   退出N层循环

  for outerloop in `seq 5`

  do 
    
    echo -n "Croup $outerloop:   "

    # ------------------------------

    for innerloop in `seq 5`

    do

       echo -n "$innerloop "

       if [ "$innerloop" -eq 3  ]

       then

           break 2 # 试试 break 2 来看看发生了什么

	          # （内部和外部循环都被退出了）

       fi


    done

    # ------------------------------------]


    echo

    done
  
    echo 

    exit 0
   
