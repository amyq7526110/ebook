#!/bin/bash

  
    #  变量类

    #  let

    #  let 命令将执行变量的算术操作.在许多情况下,
    #+ 它被看作是复杂的 expr 版本的一个简化版.
    
    #  Example 11-10 用"let"命令来作算术操作.


    echo 


    let a=11    # 与 'a=11' 相同

    let a=a+5   # 等价于let "a = a + 5"

                # 双引号与空格使这句话更据可读性

    echo "11 + 5 = $a"	# 16

    let  "a <<= 3"    # 等价于 let "a = a << 3"

    echo "\"$a\"(=16) left-shifted 3 places = $a"

                      # 128 

    let  "a /= 4"     # 等价于 let "a = a / 4" 

    echo "128 / 4 = $a"  # 32


    let  "a -= 5"     # 等价于 let "a =  a - 5"
 
    echo "32 - 5 = $a"   # 27

    let  "a  *= 10"   # 等价于 let "a =  a * 10"

    echo "27 * 10 =$a"   # 270

    let  "a %= 8"     # 等价于 let "a =  a %  8"

    echo "270 module 8 = $a"  # 6

    echo 

    exit 0


     


