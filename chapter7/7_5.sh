#!/bin/bash 

 
  
    a=4

    b=5

    #  这里的变量 a 和 b 即可以当作整型也可以是字符串

    #  这里在算术比较和字符串比较之间有些混淆

    #+ 因为 bash变量并不是强类型的

    #  bash：允许对整型变量操作和比较

    #+ 当然变量中只包含数字字符

    #  但是还是要考虑清楚在做

    echo 

    if [ "$a" -ne "$b" ]

    then

        echo "$a is not equal $b"

        echo "(arithmetic comparison)"	

    fi

    echo

    if [ "$a" != "$b" ]

    then

        echo "$a is not equal to $b."

	echo "(string comparison)"

        #   "4"	 != "5"

	#    ASCLL 52 !=  ASCLL 53

    fi	



    # 在这个例子中 "-ne" 和 "!=" 都可以

    echo

    exit 0
