#!/bin/bash

  var0=0

  Limit=10

  while [  "$var0" -lt "$Limit" ]

  do

    echo -n "$var0 "    #  -n 将会阻止产生新行

    #             ^     空格


    var0=`expr $var0 + 1`  #  var0=$(($var0+1)) 

                           #  var0=$((var0+1))

			   #  let "var0 += 1" 

			   #  很多方法

  done


  exit  0






