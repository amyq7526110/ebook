#!/bin/bash

#  硬币的正面 和 反面 

   front=0

   back=0


#  抛硬币的次数

   Maxthrow=1000

   PIPS=2

   print_count()
   {

     echo "front = $front"

     echo "back = $back"

   }

   update_count()
   {
       
     case $1 in 

       0)let "front += 1";;

       1)let "back  += 1";;

     esac  

   }


   throw=0

   until [   $throw -ge $Maxthrow    ]

   do

       diel=$((RANDOM % PIPS))

       update_count  $diel
    
       let "throw += 1"

   done


   print_count

   exit 0
