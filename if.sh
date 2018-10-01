#!/bin/bash

   if  echo $1 | grep -q [^0-3]    ;then

   echo "不是0-3" 
   
else

    echo "0-3"
fi      
