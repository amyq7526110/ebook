#!/bin/bash


    #   一些脚本可能会依赖于使用不同的调用名字,而表现出不同的行为,这样一般都需要   判断$0,而其他的名字都是通过 ln 命令产生的链接.(具体参见 Example 12-2) 
     
    #   如果脚本需要一个命令行参数,而调用的时候,没用这个参数,这就有可能造成分配一个   空变量,这样估计就会引起问题.一种解决办法就是在这个位置参数,和相关的变量后   边,都添加一个额外的字符.具体见下边的例子. 

    variable1_=$1_      #  不是 variable1=$1
    
    echo  $variable1_

    #  这将阻止一个错误,即使在调用时没使用这个位置参数. 

    critical_argument01=$variable1_
     
    echo  $critical_argument01

    #  这个扩展的字符是可以被消除掉的,就像这样. 

    variable1=${variable1_/_/}

    echo $variable1

    #   副作用就是$variable1_多了一个下划线 

    #   这里使用了一个参数替换模版(后边会有具体的讨论) 

    #   Leaving out the replacement pattern results in a deletion

    #   (在一个删除动作中,节省了一个替换模式) 


    #   一个解决这种问题的更简单的做法就是,判断一下这个位置参数是否传递下来

    E_MISSING_POS_PARAM=10

    if [ -n $1 ]

    then :

#        exit $E_MISSING_POS_PARAM

    fi	
 

    #   但是上边的方法将可能产生一个意外的副作用 

    #   参数替换的更好的办法应该是: 
    #       
    
    echo    ${1:-$DefaultVal} 
   

    #  具体察看"Parameter Substition"节 
    
    #+ 在第 9 章 






