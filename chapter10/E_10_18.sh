#!/bin/bash

   

   End_Condition=end 

   until [ "$var1" = $End_Condition ]

   #   在循环的顶部判断条件.

   do

      echo "Input variable #1"

      echo "($End_Condition to exit)"

      read var1

      echo "variable #1 = $var1"

      echo

    done

    exit 0
