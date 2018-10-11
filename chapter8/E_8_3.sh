#!/bin/bash

# 逻辑操作:

#      &&       逻辑与

#      1 if [ $condition1 ] && [ $condition2 ]
#      2 # 与: if [ $condition1 -a $condition2 ] 相同
#      3 # 如果 condition1 和 condition2 都为 true,那结果就为 true.
#      4
#      5 if [[ $condition1 && $condition2 ]]
#      # 也可以.
#      6 # 注意&&不允许出现在[ ... ]中.
#      注意:&&也可以用在 and list 中(见 25 章),
#      但是使用的时候需要依赖上下文.


#      ||       逻辑或

#      1 if [ $condition1 ] || [ $condition2 ]
#      2 # 与: if [ $condition1 -o $condition2 ] 相同
#      3 # 如果 condition1 或 condition2 为 true,那结果就为 true.
#      4
#      5 if [[ $condition1 || $condition2 ]]
#      # 也可以
#      6 # 注意||不允许出现在[ ... ]中.
#      注意:Bash 将 test 每个连接到逻辑操作的状态的退出状态(见第 6 章).

       a=24

       b=47


       if [  "$a"  -eq 24 ] && [ "$b" -eq 47  ]

       then

              
          

           echo "Test #1 succeeds."

       else 

           echo "Test #1  fails."

       fi



       #   错误 if[   "$a" -eq  24 && "$b"  -eq  47  ]

       #+             尝试执行'[ "$a" -eq 24'

       #+             因为没找到']' 所以失败了

       #   注意： 如果[[   "$a" -eq  24 && "$b"  -eq  47  ]]

       #   能够工作,那这个[[]]的test结构就比[]结构更灵活了

       #   (在 17 行的"&&"与第 6 行的"&&"意义不同)

       #  Thanks, Stephane Chazelas, for pointing this out.

       if [ "$a"  -eq 98  ] || [ "$b" -eq 47 ]

       then 

           echo "Test #2 succeeds."

       else	     

           echo "Test #2 fails."

       fi

       #   -a 和 -o 选项提供了

       #+  一种可选的混合test方法

       #   Thanks to Patrick Callahan for pointing this out.


       if [ "$a" -eq 24 -a "$b"  -eq 47  ]

       then

            echo "Test #3 succeeds."

       else 
          
	    echo "Test #3 fails."

       fi

  
       if [ "$a" -eq 94 -o "$b"  -eq 47  ]

       then

            echo "Test #4 succeeds."

       else 
          
	    echo "Test #4 fails."

       fi

       a=rhino

       b=crocodile

       if [ "$a" = rhino ]  && [  "$b" = crocodile ]

       then

            echo "Test #5 succeeds."

       else 
          
	    echo "Test #5 fails."

       fi

       echo $(( 1 && 2 )) $((3 && 0)) $((4 || 0)) $((0 || 0))


#    混杂操作:

     #  , 逗号操作符

     #     逗号操作符可以连接 2 个或多个算术运算.
     #     所有的操作都会被执行,但是只有最后一个操作作为结果.


     let "t1 = (( 5 + 3, 7 - 1, 15 - 4))"

     echo "t1 = $t1"                #  t1 = 11


     let "t2 = ((a = 9, 15 / 3))"   # set "a" and calculate "t2"

     echo "t2 = $t2   a = $a"       # t2 = 5   a = 9

     #  "," 主要用在for 循环中







       exit 0


   












      
  
 
