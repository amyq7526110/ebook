#!/bin/bash

#     eval
#     eval arg1 [arg2] ... [argN]
#     将表达式中的参数,或者表达式列表,组合起来,并且评估它们.包含在表达式中的任何变量
#     都将被扩展.结果将会被转化到命令中.这对于从命令行或者脚本中产生代码是很有用的.
#     bash$ process=xterm
#     bash$ show_process="eval ps ax | grep $process"
#     bash$ $show_process
#     1867 tty1 S 0:02 xterm
#     2779 tty1 S 0:00 xterm
#     2886 pts/1 S 0:00 grep xterm

    y=`eval ls -l`   #  y=`ls -l`  很相似

    echo $y          #+ 但是换行符将被删除，因为echo 的变量未被""引用

    echo 

    echo "$y"        #  用""将变量引用，换行符就不会被空格替换

    echo;echo

    y=`eval df`      #  y=`df`     很相似

    echo $y          #+ 换行符又被空格替换了

    # 当没有 LF(换行符)出现时,对于使用"awk"这样的工具来说,

    #+ 可能分析输出的结果更容易一些.
    
    echo
    
    echo "============================"

    echo 

    # Now, showing how to "expand" a variable using "eval" . . .

    # 现在,来看一下怎么用"eval"命令来扩展一个变量. . .
  
    for i in 1 2 3 4 5 6;do

        eval value=$i

	# value=$i 将具有同样的效果，"eval" 并不是非得在这里使用

	# 一个缺乏特殊含义的变量将被评估为自身 --
	
	#+ 也就是说,这个变量除了能够被扩展成自身所表示的字符,不能扩展成任何其他的含义.

        echo $value

    done

    echo 

    echo "...."

    echo

    for i in ls df 

    do 
       value=eval $i

       # value=$i has an entirely different effect here.

       # value=$i 在这里就与上边这句有了本质上的区别.

       # "eval" 将会评估命令 "ls" 和 "df" . . .

       # 术语 "ls" 和 "df" 就具有特殊含义,

       #+ 因为它们被解释成命令,

       #+ 而不是字符串本身.


       echo $value

    done


    exit 0
