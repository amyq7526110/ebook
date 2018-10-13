#!/bin/bash 


   Time_Limit=10

   IntErval=1

   echo 

   echo "Hit Control-C to exit before $Time_Limit seconds."

   echo 

   while [  "$SECONDS"  -le "$Time_Limit"   ]

   do

      if [ "$SECONDS" -eq 1 ]

      then
          
	  units=second

      else	  

          units=seconds

      fi

      echo "This script has been running $SECONDS $units."

      #   在一台比较慢的或者是负载很大的机器上，这个脚本可能会跳过

      #+  几次循环

      #+  在一个while循环中

      sleep $IntErval

      done

      echo -e "\a"     #  Beep!

      exit  0
