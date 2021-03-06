#!/bin/bash


    # 在当前目录下 uudecode 所有用 uuencode 编码的文件.

    line=35 # 允许读头部的35行

    for File in *   #  Test 下所有文件

    do 
       
       seach1=`head -$line $File | grep begin | wc -w`

       seach2=`tail -$line $File | grep end | wc -w`

       # Uuencode 过的文件在文件开始的地方有个 "begin",
       
       #+ 在文件结尾的地方有个 "end".

       if [ "$seach1" -gt 0 ]
 
       then 

           if [   "$seach2" -gt 0 ]

	   then 

	        echo "uudecodeing - $File -"

		uudecode $File

           fi 		

	fi

   done

   # 小心不要让这个脚本运行自己,
   #+ 因为它也会把自身也认为是一个 uuencoded 文件,
   #+ 这都是因为这个脚本自身也包含 "begin" 和 "end".
   
   # 练习:
   # -----
   # 修改这个脚本, 让它可以检查一个新闻组的每个文件,
   #+ 并且如果下一个没找的话就跳过.
   
   exit 0

           
