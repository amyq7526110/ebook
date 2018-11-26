#!/bin/bash 


# agram2.sh
# 关于命令替换嵌套的例子

#  使用"anagram"工具

  #+ 这是作者的"yawl"文字表包中的一部分.
  # http://ibiblio.org/pub/Linux/libs/yawl-0.3.2.tar.gz
  # http://personal.riverusers.com/~thegrendel/yawl-0.3.2.tar.gz

  E_NOARGS=66

  E_BADARG=67

  MINLEN=7

  if [ -z "$1" ]

  then
      echo "Usage:`basename $0` Letterset"

      exit $E_NOARGS         # 脚本需要一个命令行参数

  elif [${#1} -lt $MINLEN  ]

  then 

       echo "Argument must have at least $MINLEN letters"

       exit $E_BADARG
  
  fi

  FILTER='.......'

  #   1234567

  Anagranms=( $(echo $(anagram $1 | grep $FILTER )))

  # | | 嵌套的命令替换 | |
  # ( 数组分配)

  echo 

  echo "${#Anagranms[*]} 7+ letter anagrams found"  

  echo 

  echo ${Anagranms[0]}  # 第一个anagram

  echo ${Anagranms[1]}  # 第一个anagram

                        # 等等

  # echo "${Anagranms[*]}"   在一行上列出所有的anagram 

  #  考虑到后面还有"数组" 作为单独的一章进行讲解,
  #+ 这里就不深入了.
 
  # 可以参阅 agram.sh 脚本, 这也是一个找出 anagram 的例子.
 
  exit $?

  
命令替换在脚本中使用的例子:
1.  Example  10-7
2.  Example  10-26
3.  Example  9-28
4.  Example  12-3
5.  Example  12-19
6.  Example  12-15
7.  Example  12-49
8.  Example  10-13
9.  Example  10-10
10. Example  12-29
11. Example  16-8
12. Example  A-17
13. Example  27-2
14. Example  12-42
15. Example  12-43
16. Example  12-44


注意事项:
[1]
对于命令替换来说, 这个命令可以是外部的系统命令, 也可以是内部脚本的内建
命令, 甚至是一个脚本函数.
[2]
从技术的角度来讲, 命令替换将会抽取出一个命令的输出, 然后使用=操作赋值到
一个变量中.
[3]
事实上, 对于反引号的嵌套是可行的, 但是只能将内部的反引号转义才行, 就像
John 默认指出的那样.
1 word_count=` wc -w \`ls -l | awk '{print $9}'\` `
     
