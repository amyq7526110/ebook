#!/bin/bash


   #  pick-card.sh

   #  这是一个从数组取出随机元素的一个例子


   # 取出一张牌，任何一张

   Suites="Clubs
Diamonds
Hearts
Spades"


Denominations="2
3
4
5
6
7
8
9
10
jack
Queen
King
Ace"

#  注意变量的多行展开

   suite=($Suites)   #  读到数组变量中

   denomination=($Denominations)

   num_suites=${#suite[*]}    # 计算有多少元素

   num_denominations=${#denomination[*]}

   echo -n "${denomination[$((RANDOM % num_denominations))]} of " 

   echo ${suite[$((RANDOM%num_suites))]}


   # $bozo sh pick cards.sh

   # Jack of Cliubs

   # Thank you, "jipe," for pointing out this use of $RANDOM.



   # Jipe 展示了一系列的在一定范围中产生随机数的方法.

   # 在 6 到 30 之间产生随机数

   number=$((RANDOM%25+6))

   echo "number between of 6 and 30  $number"

   #  在 6 到 30 之间产生随机数

   #+ 但是这个数字必须被3均分


   number=$(((RANDOM%30/3+1)*3))

   echo "number between of 6 and 30 avg 3    $number  "


   # 注意,这可能不会在所有时候都能正常地运行.

   # It fails if $RANDOM returns 0.

   # Frank Wang 建议用下面的方法来取代:

    number=$(( RANDOM%27/3*3+6 ))

   echo "number between of 6 and 30 avg 3    $number  "

     #  最大102 到 0 三的被数

     max=100

     min=0
    
     divisibleBy=3

    rnumber=$(((RANDOM%(max-min+divisibleBy))/divisibleBy*divisibleBy+min))


    echo "$rnumber"


    exit 0







