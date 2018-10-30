#!/bin/bash

  # wf.sh : 分析文本文件中自然词汇出现的频率

  # "wf2.sh" 是一个效率更高的版本.

  #  从命令行中检查输入的文件

  Args=1

  E_BadArgs=65

  E_Nofile=66

  if [ $# -ne "$Args" ]

  then

      echo "File \"$1\" does not exist "

      exit $E_BadArgs

  fi


  if [ !  -f "$1" ] # 检查传入的文件参数是否存在

  then 

       echo "File \"$1\" does not exsit."

       exit $E_NoFile

  fi     

  ########################################################
  # main ()

  sed 's/\.//g;s/\,//g;s/\s/\
/g' "$1" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr

  
#  sed 's/\.//g;s/\,//g;s/ /\
#/g' "$1" | tr 'A-Z' 'a-z' | sort | uniq -c | sort +1 [-f] | sort +0 -nr

 # sed 's/\.//g;s/\,//g;s/ /\
#/g' "$1" | tr 'A-Z' 'a-z' | sort | uniq -c | sort + 0 -nr
 
#  sed 's/\.//g;s/\,//g;s/ /\
#/g' "$1" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -k1nr -k

  #    =================================

  #    检查单词出现的频率

  #    过滤掉句号和逗号

  #+   并且把单词间的空格转化为换行,
  #+   然后转化为小写,
  #+   最后统计出现的频率并按频率排序.




