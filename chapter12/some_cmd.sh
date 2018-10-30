#!/bin/bash
 

  #  expand.unexpand 

     # expand 将会把每个tab转化为一个空格，这个命令经常用在管道中.

     # unexpand 将会把每个空格转化为一个 tab.效果与 expand 相反.

  #  paste
  #      将多个文件,以每个文件一列的形式合并到一个文件中, 
  #      合并后的文件没列就是原来的一个文件.对于创建系统 log 文件来说, 
  #      使用 cut 命令与 paste 命令相结合是非常有用的.

  #  join
  #      这个命令与 paste 命令属于同类命令, 但是它能够完成某些特殊的目地.
  #      这个强力工具能够以一种特殊的形式来合并 2 个文件, 这种特殊的形式
  #      本质上就是一个关联数据库的简单版本.

  #  join 命令只能够操作 2 个文件, 它可以将那些具有特定标记域
  #       (通常是一个数字标签)的行合并起来, 并且将结果输出到 stdout.
  #	  被加入的文件应该事先根据标记域进行排序以便于能够正确的匹配.

  
  
  #   File: 1.data
  #   100 Shoes
  #   200 Laces
  #   300 Socks
  #   File: 2.data
  #   
  #   100 $40.00
  #   200 $1.005 300 $2.00
  #   bash$ join 1.data 2.data
  #   File: 1.data 2.data
  #   100 Shoes $40.00
  #   200 Laces $1.00
  #   300 Socks $2.00
  #   注意: 在输出中标记域将只会出现一次.
  #   head
  #   将一个文件的头打印到 stdout 上 ( 默认为 10 行, 可以自己修改 ). 这个命令也有一些有趣的选项.



