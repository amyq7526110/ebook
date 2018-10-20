#!/bin/bash

   #  $RANDOM 到底有多随机？最好的办法就是写一个脚本测试一下

   #  跟踪随机数的分配情况. 让我们用随机数摇一个骰子.

   #  使用随机数来摇一个骰子

   #  RANDOM 到底有多 random?


   RANDOM=$$      # 使用脚本进程id来作为随机数的产生的种子

   PIPS=6         # 一个骰子有6面

   MaxThrows=600  # 如果你没别的事干,那么可以增加这个数值

   throw=0        # 抛骰子的次数

   ones=0         # 必须把所有count都初始化为0

   twos=0         #+ 因为未初始化的变量为 null,不是 0.

   threes=0     

   fours=0

   fives=0

   sixes=0

   
   print_result()
   {

   echo 

   echo  "ones = $ones"

   echo  "twos = $twos"

   echo  "threes = $threes"

   echo  "fours  = $fours"

   echo  "fives  = $fives"

   echo  "sixes  = $sixes"

   echo

   }

  update_count()
  {

   case "$1" in

      0)   let "ones += 1";;  # 因为骰子没有0，所以给1.

      1)   let "twos += 1";;  #  对 tows 做同样的事.

      2)   let "threes += 1";;  

      3)   let "fours += 1";;  

      4)   let "fives += 1";;  

      5)   let "sixes += 1";;  

    esac   

   }

   echo 

   while [ "$throw" -lt "$MaxThrows" ] 

   do

     let "die1 = RANDOM % $PIPS"
 

     update_count $die1

     let "throw += 1"

   done  


   print_result



   echo $throw

   exit 0

     # 如果 RANDOM 是真正的随机,那么摇出来结果应该平均的.
    
     # $MAXTHROWS 设为 600,那么每面都应该为 100,上下的出入不应该超过 20.
    
     #
     # 记住 RANDOM 毕竟只是一个伪随机数,
    
     #+ 并且不是十分完美的.
    
     # 随机数的产生是一个深奥并复杂的问题.
    
     # 足够长的随机序列,不但会展现杂
