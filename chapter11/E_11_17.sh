#!/bin/bash

#   unset
#   unset 命令用来删除一个 shell 变量,效果就是把这个变量设为 null.注意:这个命令对位置参数无效.
#   bash$ unset PATH
#   bash$ echo $PATH
#   bash$

   #  unset.sh : Unset 1 个 变量

   variable=hello    # 初始化

   echo "variable = $variable"

   unset variable    # unset 

                     # 与 variable = 的效果相同

   echo "(unset) variable = $variable"  # $variable 设为 null

   exit 0
		     


