#!/bin/bash

# 也可以使用命令替换来产生 for 循环的[list].具体见 Example 12-49,Example 10-10,



# 使用命令替换来产生 for 循环的[list]


# for-loopcmd.sh 带[list]的for循环

#+[list]是由于命令的替换产生的

  Numbers="9 7 3 8 37.53"

  for number in `echo $Numbers`  # for number in 9 7 3 8 37.53

  do  
   
    echo -n "$number"

  done

  echo

  exit 0


