#!/bin/bash


#   注意: 一个空值变量,或者是根本就没声明的变量,在赋值之前使用它可能会引起问题.但是还是可以用来做算术运算


    echo "$uninitialized"          # (blank line)

    let "uninitialized += 5"       #  Add 5 to it.

    echo $uninitialized            #  5


#   结论：

#   对于一个空值变量在做算术运算的时候，就好像他的值为0一样

#   This is undocumented (and probably non-portable) behavior

#   这并没有文档化(可能是不可移植)的行为

################################EndScript#########################################
#具体参考   Example 11-21
