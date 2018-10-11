#!/bin/bash 


    # numbers.sh  数字常量的几种不同表示法


    # 10 进制 ： 默认

    let "dec = 32"

    echo "declimal number = $dec"    #  32

    # 一切都正常


    # 8 进制  ：  以0开头

    let "oct = 032"

    echo "octal number = $oct"       #  26

    #  表达式结果用10 进制来表示

    let "hex = 0x32"

    echo "hexadecimal number = $hex" # 50

    #  表达式结果用10 进制来表示


    #  其它进制：BASW# NUMBER

    #  BASE between 2 and 64.

    #  2 到 64 进制 都可以

    #  NUMBER 必须在base 范围内

    
    let   "bin = 2#111100111001101"

    echo "binary number = $bin"      # 31181

    let   "b32 = 32#77"

    echo "base-32-number = $b32"     # 231

    let   "b64 = 64#@_"

    echo "base-64 number = $b64"     # 4031

    # 逗号操作符可以连接 2 个或多个算术运算.
    # 所有的操作都会被执行,但是只有最后一个操作作为结果.


    echo 


    echo $((36#zz)) $((10101010)) $((16#AF16)) $((53#1aA))


    #  重要的注意事项

    #----------------

    #  如果使用的每位数字超出了这个进制表示法规定的字符的范围话

    #+ 将给出一个错误消息


    let "bad_oct = 081"

    # 错误信息：
    #  E_8_2_4.sh:行71: let: bad_oct = 081: 数值太大不可为算 数进制的基 （错误符号是 "081"


    exit  0










