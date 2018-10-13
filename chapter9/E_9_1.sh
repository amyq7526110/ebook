#!/bin/bash

   #  $IFS 处理留白的方法

   output_args_one_per_line()
   {
   
      for arg

      do 
        
	echo  "[$arg]"

      done	
   
   }

   echo;echo "IFS=\" \""

   echo "......."

   IFS=" "

   var="a   b c  "

   output_args_one_per_line $var  #  output_args_one_per_line `echo "a   b  c    "`


   #[a]

   #[b]

   #[c]

   echo;echo "IFS=:"

   echo "........"

   IFS=:

   var=":a::b:c:::"      #  与上面一样，但是用""替换了":"

   output_args_one_per_line $var

   #
   # []
   # [a]
   # []
   # [b]
   # [c]
   # []
   # []
   # []


   #  同样的事情也会发生在 awk 中的"FS"域分隔符.

   echo 

   exit 0

