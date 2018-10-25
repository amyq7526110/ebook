#!/bin/bash

   #  如果忽略了 in list 列表,那么 select 命令将使用传递到脚本的命令行参数,或者是函数参数 前提是将 select 写到这个函数中.

   #  与 for variable [in list]结构在忽略[in list]时的行为相比较.

   PS3='Choose your favorite vegetable: '

   echo 

   choice_of(){
   
   select vegetable 

   # [in list] 被忽略,所以select使用传递给函数的参数

   do

      echo 

      echo "Your favorite vegele is $vegetable."

      echo "Yuck!"

      echo

      break
    
   done

   
   
   }


   choice_of beans rice carrots radishes tomatoes spinach
   # $1 $2 $3 $4 $5 $6


   exit 0
