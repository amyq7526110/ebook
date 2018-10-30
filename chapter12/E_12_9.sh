#!/bin/bash


    # 展示一些`expr`的使用

    # ======================

    echo 

    # 算术操作

    # --------

    echo "Arithmetic Operiaters"

    echo 

    a=`expr 5 + 3`

    echo "5 + 3 = $a"

    a=`expr $a + 1`

    echo "a + 1 = $a"

    echo "(intermenting a variable)"

    a=`expr 5 % 3`

    # 取模操作

    echo 

    echo "5  mod 3 = $a"

    echo 

    echo 

    # 逻辑操作

    # ---  ---

    #  true 返回 1 ，false 返回 0

    #+ 而bash的使用惯例则相反

    echo "Logical Operators"

    echo 

    x=24

    y=25

    b=`expr $x = $y`   # 测试相等

    echo "b = $b"      # 0  ( $x -ne $y )

    echo 

    a=3

    b=`expr $a \< 3`

    echo "if a <= 3. b =1(true)"

    echo "b = $b"     # 1 ( 3 -lt 10 )

    echo 

    # Note escaping of operators 

    b=`expr $a \<= 3`

    echo "if a <=3 ,b=1(true)"

    echo "b = $b"     # 1 ( 3 -le 3)

    #  也有 "\>="  大于等于

    echo 

    echo 


    # 字符串 操作

    # ------

    echo "String Optertors"

    echo 

    a=1234zipper43231

    echo "The string being operated upon is \"$a\"."

    #  长度: 字符串长度

    b=`expr length $a`

    echo "Length of \"$a\" is $b"

    # 索引: 从字符串的开头查找匹配的字串

    #       并取得第一个匹配子串的位置

    b=`expr index $a 23`

    echo "Numberical position of first \"2\" in \"$a\" is \"$b\"."

    # substr; 从指定位置提取指定长度的字串.

    b=`expr substr $a 2 6` 

    echo "Substring of \"$a\" ,starting at position 2, and 6 chars long is \"$b\""
   
   # 'match' 操作的默认行为就是

   #+ 从字符串的开始进行搜索,并匹配第一个字符串

   # 

   #    使用正则表达式

   b=`expr match "$a" '[0-9]*'`   # 数字的个数

   echo Number of digits at the beginning of \"$a\" is $b.

   b=`expr match "$a" '\([0-9]*\)'`  # 注意需要转义括号

   # == == + 这样才能触发子串的匹配.

   echo "The digits at the beginning of \"$a\" are \"$b\"."

   echo



    #   注意: ":" 操作可以替换 match. 比如, b=`expr $a : [0-9]*`与上边所使用的 b=`expr match $a [0-9]*` 完全等价.

    
   echo 
   
   echo "String operation using \"expr \$string : \" construct"

   echo "====================================================="

   echo

   a=1234zipperFLIPPER43231

   echo "The string being operated upon is \"`expr "$a" : '\(.*\)'`\"."
   
   #  转义括号对操作   == == 

   #    +++++++++++++++++++++++++++++++++++

   #+       转义括号对 
   #+     用来匹配一个字串 

   #    +++++++++++++++++++++++++++++++++++


   #  如果不转义括号的话

   # 。。。。。

   echo "Length of \"$a\" is expr "$a" : '.*'."

   echo "Number of digits at the beginning of \"$a\" is `expr "$a" : '[0-9]*'`"

   # -----------------------------------------------#

   echo 

   echo "The digits at the beginning of \"$a\" are `expr "$a" : '\(.......\)'`."

   # =================

   #  再来一个，转义括号对强制一个字串匹配

   # 

   echo "This last 7 characters of \"$a\" are `expr "$a" : '.*\(.......\)'`."

   # ==== end of string operator ^^

   # (最后这个模式的意思是忽略前边的任何字符,直到最后 7 个字符,
   #+ 最后 7 个点就是需要匹配的任意 7 个字符的字串)

   echo 

   exit 0

   
         










