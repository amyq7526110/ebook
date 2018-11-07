#!/bin/bash 

  #  grp.sh: 一个非常粗糙的'grep'的实现

  E_BadArgs=65

  if [ -z "$1" ]

  then 
     
      echo "Usage: `basename $0` pattern"

      exit $E_BadArgs

  fi

  echo

  for file in *   # 遍历$PWD下的所有文件

  do 
    
    output=$(sed -n /"$1"/p $file) # 命令替换

    if [ ! -z "$output" ]

    then 
       
        echo -n "$file: "

	echo "$output"

    fi	   # sed -ne "/$1/s|^|${file}: |p" 这句与上面等价

    echo
     
   done

   echo 

   echo

   exit 0
   # 练习:
    # -----
   # 如果"$output" 不加双引号将会发生什么?33 # 1) 在任何给定的文件中,如果有超过一个匹配的话, 在输出中添加新行.
   # 2) 添加一些特征.

    



