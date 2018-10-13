#!/bin/bash 


    # $0,$1,$2,$3,等等....

       # 位置参数，从命令行传递给函数，或者赋值给一个变量

       #  见 4_5.sh 和 E_11_15.sh 


    # $#

       # 命令行或者位置参数的个数。
       

    # $*

       # 所谓的位置参数,被作为一个单词

       # 注意：$* 必须被""引用


    # $@

       #  与$*同义,但是每个参数都是一个独立的""引用字串,这就意味着参数被完整地传递,并没有被解释和扩展.这也意味着,每个参数列表中的每个参数都被当成一个独立的单词.  
       #  注意:"$@"必须被引用.

       # arglist.sh

       # 多使用几个参数来调用这个脚本，比如"one two three"

       E_BADARGS=65

       if [ ! -n "$1" ] 

       then

           echo "Usage:`basename $0` argument1 argument2 etc."

           exit $E_BADARGS

       fi	      

       echo  


       index=1   # 初始化数量

       echo "Listing args with \"\$*\""

       for arg in "$*"

       do

          echo  "Arg # $index = $arg"

	  let "index += 1 "

       done       # sees all arguments as single word 

                 #+ 认为所有的参数为一个单词

       echo "Listing args with \"\$@\";"

       echo 

       for arg in "$@"

       do

          echo "Arg # $index = $arg"

	  let "index += 1"

       done     # $@ 认为每个参数都是一个单独的单词

       echo "Arg list seen as separate words."

       echo 


       index=1         #  重置数量


       echo "Listing args with \$* (unqupted):"

       for arg in $*
   
       do

          echo "Arg # $index = $arg"

          let "index += 1"

       done

       echo "Arg list seen as separate words"


       exit 0

   	


        

      

































