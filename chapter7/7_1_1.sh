#!/bin/bash


   #  技巧：

   #  如果你不确定一个特定的条件如何判断

   #+ 在一个if-test 结构中测试它。
   
   echo 

   echo "Testing \"0\""

   if [ 0 ]  # zero

   then 

        echo "0 is true."

   else 
      
        echo "0 is false."

   fi        #  0 is true

   echo 

   echo "Testing \"1\""

   if [ 1 ]  # one

   then 

        echo "1 is true."

   else 
      
        echo "1 is false."

   fi        #  1 is true

   echo 

   echo "Testing \"NULL\""

   if [  ]  # NULL(空状态)

   then 

        echo "NUll is true."

   else 
      
        echo "NUll is false."

   fi        #  null is false


   echo 

   echo "Testing \"-1\""

   if [ -1 ]  # -1

   then 

        echo "-1 is true."

   else 
      
        echo "-1 is false."

   fi        #  -1 is true


   echo 

   echo "Testing \"xyz\""

   if [ xyz ]  # 字符串

   then 

        echo "Random string is true."

   else 
      
        echo "Random string is false."

   fi        #  Random string is true


   echo 

   echo "Testing \"\$xyz\""

   if [ $xyz ]  # 测试$xyz 是否为null 

   then 

        echo "Uninitialized variable  is true."

   else 
      
        echo "Uninitialized variable  is false."

   fi        #  Uninitialized variable is false


   echo 

   echo "Testing \"-n \$xyz\""

   if [ -n "$xyz" ]  #  更加科学的方法

   then 

        echo "Uninitialized variable  is true."

   else 
      
        echo "Uninitialized variable  is false."

   fi        #  Uninitialized variable is false

   
   xyz=      #  初始化但将其设为空值

   echo 

   echo "Testing \"-n \$xyz\""

   if [ -n "$xyz" ]  

   then 

        echo "NULL variable  is true."

   else 
      
        echo "NULL variable  is false."

   fi        #  NULL variable is false


#  什么时候 "false" 为 "true"


   echo 

   echo "Testing \"false\""

   if [ "false" ]                 #   看起来false 就是一个字符串

   then 

       echo "\"false\" is ture"   #+  没错它的结果就是true

   else 
        
       echo "\"false\" is false"

   fi                             # "false" is ture 



   echo 

   echo "Testing \"\$false\""

   if [ "$false" ]                 #  为声明的变量

   then 

       echo "\"\$false\" is ture"   

   else 
        
       echo "\"\$false\" is false"

   fi                             # "$false" is ture 



  # 如果我们 test 这个变量"$true"会发生什么结果?答案是和"$flase"一样,都为空,因为我
  #+ 们并没有定义它.
   echo

   exit 0
