#!/bin/bash

  #  seeding-random.sh  设置RANDOM变量作为种子

  MaxCount=25     #  决定产生多少个随机数

  random_number()
  {
    count=0

    while [ "$count" -lt "$MaxCount" ]

    do
       number=$RANDOM

       echo -n "$number "

       let "count += 1"
       
    done
  }

  echo ; echo 

  RANDOM=1      # 在试一下，但这次使用不同种子

  random_number  # ...将会和上边产生的随机数列相同

                 # 

		 # 复制一个相同的随机数序列在什么时候有用呢


  echo ; echo		 


  RANDOM=1       # 设置同样的种子

  random_number  # ...将会和上面产生同样的结果

                 # # 复制一个相同的随机数序列在什么时候有用呢?

  echo ; echo

  RANDOM=2       # 再试一下,但这次使用不同的种子...
  
  random_number  # 将给出一个不同的随机数序列.

  echo ; echo


  # RANDOM=$$

  # 从'time'或'date'命令中取得 RANDOM 作为种子也是很常用的办法.

  # 一个有想象力的方法...

  Seed=$(head -1 /dev/urandom | od -N 1 | awk '{print $2}')

  #  首先从/dev/urandom(系统伪随机设备文件)中取出 1 行,

  #+ 然后着这个可打印行转换为(8 进制)数,通过使用"od"命令,

  #+ 最后使用"awk"来获得一个数,

  #+ 这个数将作为随机数产生的种子.

  RANDOM=$Seed

  random_number

  echo; echo

  exit 0
  
