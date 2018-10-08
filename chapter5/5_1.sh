#!/bin/bash

   # weirdvars.sh echo 诡异的变量

   var="(]\\{}\$\""

   echo  $var   #    (]\{}$"
 
   echo  "$var" #    (]\{}$"   并没有不同

   echo 

   IFS='$'

   echo  $var   #    (] {}$"   \ 转化成了空格

   echo "$var"  #    (]\{}$"
 
   exit 0  
