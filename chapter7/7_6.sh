#!/bin/bash


    # str-test.sh : 测试null字符串和非引用字符串

    #+ but not string and sealing wax ,not to mention cabbages and kings ...

    #+ 看不懂上面这句

    #  Using if [...]


    #  如果一个字符串没被初始化，那么它就没有定义的值

    #  这种状态叫做"null" 与 zero 不同

    if [ -n $string1 ]  # $string1 没有被声明和初始化

    then  
     
        echo "String \"string1\" is not null."

    else
      
        echo "String \"string1\" is null."

    fi	

    # 错误的结果

    # "String\"string1\" is null."
 
   
    echo   

    #  让再我们试一下
  

    if [ -n  "$string1" ]  # 这次$string1被引用了

    then 

        echo "String \"string1\" is not null."

    else
      
        echo "String \"string1\" is null."

    fi                     #  --的字符串在[]结构中



    echo 


    if [ $string1 ]       # 这次$string1 变成"裸体"的了

    then 
        
        echo "String \"string1\" is not null."

    else
      
        echo "String \"string1\" is null."

    fi                    

    #  这工作得很好

    #  这个[]test 操作检测string 是否为null

    #  然而,使用（"string1"）是一种很好的习惯

    #  As Stephane Chazelas points out.

    #       if [ $string1 ]  有一个参数"]"

    #       if [ "$string1" ]  有两个参数空的"$string1"和"]"



    echo 


    string1=initialized


    if [  $string1 ]      #  再来 ， $string1 裸体

    then

        echo "String \"string1\" is not null."

    else

        echo "String \"string1\" is null."

    fi

    echo
  
    #  给出了正确的结果

    #  不过怎么说("string1")还是好很多，因为

    
    string1="a = b"

    if [ $string1 ]  # 再来，$string1 再来裸体

    then

        echo "String \"string1\" is not null"

    else 

        echo "String \"string1\" is null"

    fi	


    #  非引用的"$string1"现在给出了一个错误的结果!

  




    
    #




