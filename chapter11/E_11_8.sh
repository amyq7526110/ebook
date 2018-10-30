#!/bin/bash

 # 管道输出到 read 中的问题

 # readpipe.sh

   last="(null)"
   cat $0 |
   while read line
   do
      echo "{$line}"
      last=$line
   done  
   printf "\nAll done;last:$last\n"
   exit 0 


#############################################

#    ./readpipe.sh
#    {#!/bin/sh}
#    {last="(null)"}
#    {cat $0 |}
#    {while read line}
#    {do}
#    {echo "{$line}"}
#    {last=$line}
#    {done}
#    {printf "nAll done, last:$lastn"}
#    All done, last:(null)
#    
# 变量(last)是设置在子 shell 中的而没设在外边. 
