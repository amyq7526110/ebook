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
       
# 1) 
#     使用循环结构,打印出 10 个不同的随机数.
#     (提示: 在循环的每次执行过程中,你必须使用"srand()"函数来生成不同的
#+    种子.如果你没做这件事那么将发生什么?


    echo  | awk '{srand()}' 
   
    AwkScript='BEGIN{print rand()}'
     
    awk  "$AwkScript"

       
    echo  | awk '{srand()}' 
   
     
    AwkScript='BEGIN{for(i=0;i<10;i++){print rand()}}'

    awk  "$AwkScript"

# 2) 
#     使用一个整数乘法作为一个放缩因子,在 10 到 100 的范围之间,
#+    来产生随机数.

    Seed=$(head -1 /dev/urandom | od -N 1 | awk '{print $2}')

    AwkScript='BEGIN{srand('$Seed');x=rand();y=x*100%90+10;print x, y}'  
  
    awk  "$AwkScript"

# 3)  同上边的练习,但这次产生随机整数.


    Seed=$(head -1 /dev/urandom | od -N 1 | awk '{print $2}')
#
    AwkScript='BEGIN{srand('$Seed');x=srand();u=x%90+10;print u }'
#
    awk  "$AwkScript"
# 
  
#   "data"命令也可以用来产生伪随机整数序列.

#   注意事项:

#   真正的随机事件(在它存在的范围内),只发生在特定的几个未知的自然界现象中,比如
#   放射性衰变.计算机只能产生模拟的随机事件,并且计算机产生的"随机"数因此只能称
#   为伪随机数.


#   计算机产生的伪随机数序列用的种子可以被看成是一种标识标签.比如,使用种子 23 所产生的伪随机数序列就被称作序列#23.

#   一个伪随机序列的特点就是在这个序列开始重复之前的所有元素的个数的和,也就是
#   这个序列的长度.一个好的伪随机产生算法将可以产生一个非常长的不重复的序列.
 

    exit 0
