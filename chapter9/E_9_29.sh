#!/bin/bash


  # random2.sh 产生一个范围0-1的伪随机数

  # 使用awk的rand()函数

   
  AwkScript='{ srand();print rand()}'

  #       Command(s) / 传到 awk 中的参数

  #       注意,srand()函数用来产生awk的随机数种子

  
  echo -n 'Random number between 0 and 1 = '

  echo | awk "$AwkScript"

  awk "BEGIN$AwkScript"

  #  awk "$AwkScript"
  
  # 如果你省去"echo" 那么将会发生什么？  等待输入
       
 

    echo  | awk '{srand()}' 
   
    AwkScript='BEGIN{print rand()}'
     
    awk  "$AwkScript"



       
    echo  | awk '{srand()}' 
   
     
    AwkScript='BEGIN{for(i=0;i<10;i++){print rand()}}'
    awk  "$AwkScript"



  
   exit 0
