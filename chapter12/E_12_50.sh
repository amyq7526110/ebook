#!/bin/bash 
 # 一个简单些的例子:
 # 产生 10 个连续扩展名的文件,
 #+ 名字分别是 file.1, file.2 . . . file.10.
 #  COUNT=10
 #  PREFIX=file5
 #  for filename in `seq $COUNT`
 #  do
 #  touch $PREFIX.$filename
 #  # 或者, 你可以做一些其他的操作,
 #  #+ 比如 rm, grep, 等等.
 #  done


 # letter-count.sh:统计一个文本文件中字母出现的次数.

 # 由 Stefano Palmeri 编写.
 # 经过授权使用在本书中.
 # 本书作者做了少许修改.

 MINAGRGS=2  #  本脚本至少需要 2 个参数.

 E_BADARGS=65

 FILE=$1

 let LETTERS=$#-1  # 制定了多少个字母 (作为命令行参数).
                   # (从命令行参数的个数中减 1.)

 show_help(){
 
   echo 

       echo "Usgae:`basename $0`  file letters"

       echo "Note: `basename $0`  argumnet are case sensitive."

       echo "Example: `basename $0` foobar.txt G n U L i N U x."

   echo
 }

 if [  $# -lt $MINAGRGS ] 

 then 
    
    echo 
    
    echo "Not_enough arguments"

    echo 

    show_help

    exit $E_BADARGS

  fi


  # 检查文件是否存在.
  if [ ! -f $FILE ]; then
  
     echo "File \"$FILE\" does not exist."
  
     exit $E_BADARGS

  fi

  for n in `seq $LETTERS`

  do 
     

     shift 

     if [[ `echo -n  "$1" | wc -c` -eq 1 ]]

     then
         
         echo "$1" -\> `cat $FILE | tr -cd "$1" | wc -c`

     else 
         
	 echo "$1 is not a single char."

      fi

   done   


   exit $?

   # 这个脚本在功能上与 letter-count2.sh 完全相同,
   #+ 但是运行得更快.
   # 为什么?

