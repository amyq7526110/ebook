#!/bin/bash

filename=test.txt  

   echo hello;echo there

   if [  -f "$filename" ];then  # 注意 if 和 then 为何用 ；分隔

                                # 

      echo "File $filename exists.";cp $filename{,.bak}

   else

      echo "File $filename not found.";touch $filename

   fi;echo "File test complete."
