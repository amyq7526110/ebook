#!/bin/bash


#   测试操作.在一个确定的表达式中,用?来测试结果.
#   (())结构可以用来做数学计算或者是写 c 代码,那?就是 c 语言的 3 元操作符的一个.
#   在"参数替换"中,?测试一个变量是否被 set 了. 


    : ${haha?}
 
    haha=${haha:-123456}
  
    : ${haha?}


# ?  在 file globbing 中和在正则表达式中一样匹配任意的单个字符.
