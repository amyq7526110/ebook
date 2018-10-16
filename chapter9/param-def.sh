#!/bin/bash

 
   #  ${parameter=default},${parameter:=default} 

   #  如果 parameter 未设置，那么就设置未default

   #  这两种办法绝大多数时候用法都一样,只有在$parameter 被声明并设置为空的时候,

   #  才会有区别,[1]和上边的行为一样


   echo ${username=`whoami`}

   #  Variable "username" is now set to `whoami`

   #  变量"username"被赋值为`whoami`

   
   #  ${parameter+alt_value},${parameter:+alt_value}

   #   如果parameter 被set了，那就使用 alt_value,否则就使用null字符串

   #   这两种办法绝大多数时候用法都一样,只有在$parameter 被声明并设置为空的时候,
   #   会有区别,见下.

   echo "# # # # # \${parameter+alt_value}  #  #  #  # #"

   echo 

   a=${param1+xyz}

   echo "a = $a"       #  a = 

   param2=

   a=${param2+xyz}

   echo "a = $a"       #  a = xyz

   param3=123

   a=${param3+xyz}     #  a = xyz


   echo "a = $a"       

   a=${param4:+xyz}    
   
   echo "a = $a"       #  a =


   param5=

   a=${param5:+xyz}   
   
   echo "a = $a"        #  a = 


   param6=123

   a=${param6+xyz}    

   echo "a = $a"        #  a = xyz


   









