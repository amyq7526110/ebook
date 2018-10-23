#!/bin/bash

#  注意:每个[list]中的元素都可能包含多个参数.在处理参数组时,这是非常有用的.

#  在这种情况下,使用 set 命令(见 Example 11-15)来强制解析每个[list]中的元素,

#  并且分配每个解析出来的部分到一个位置参数中.


   # 还是行星

   # 分配行星的名字和它距太阳的距离.

   for planet in "Mercury 36" "Venus 67" "Earth 93" "Mars 142" "Jupiter 483"

   do

      set -- $planet 
      
      # 解析变量"planet"并且设置位置参数.

      # "--" 将防止$planet 为空,或者是以一个破折号开头.

      # 一种方法就是使用数组,

      #  original_params=("$@")

      echo "$1      $2,000,000 miles from the sun"

      #-------two tabs---把后边的 0 和$2 连接起来

    done

    exit 0


      #  可以在 for 循环中的[list]位置放入一个变量



 
