#!/bin/bash 


  #  调用 bc 的另一种可选的方法就是使用 here document ,

  #  并把它嵌入到 命令替换 块中.当一个脚本需要将一个选项列

  #  表和多个命令传递到 bc 中时, 这种方法就显得非常合适


  variable=`bc  << Limit_String
  1 * 2 
  4 * 6
  5 + 5
Limit_String  
`
   echo "$variable"


