#!/bin/bash


   # 字串替换

   #   ${string /substring/replacement}
  
   #      使用$replacement 来替换第一个匹配的$substring.
   
   #   ${string//substring/replacement}

   #      使用$replacement 来替换所有匹配的$substring.


   stringZ=abcABC123ABCabc

   echo  ${stringZ/abc/xyz}        # xyzABC123ABCabc

                                   # 用xyz替换第一个abc

   echo  ${stringZ//abc/xyz}	   # xyzABC123ABCabc

                                   # 用xyz替换所有的abc

   #   ${string/# substring/replacement}

   #   如果$substring匹配$string 的开头部分,那么就用$replacement来替换
   #+  $substring部分

   #    如果$substring 匹配$string的结尾部分,那么就用$replacement来替换
   #+  $substring部分


   echo ${stringZ/#abc/XYZ}       # XYZABC123ABCabc

                                   # 用'XYZ'替换开头的abc

   echo ${stringZ/%abc/XYZ}	   # abcABC123ABCXZ

                                   # 用'XYZ'替换结尾的abc


   your_id=${USER}-on-${HOSTNAME}

   echo "$your_id"

   #

   echo "Old \$PATH = $PATH"

   PATH=${PATH}:/opt/bin  #  Add /opt/bin/ to $PATH  for duration of script

   echo "NEW \$PATH = $PATH"

   #   ${parameter-default},${parameter:-default}

   #      如果 parameter 没被 set,那么就使用 default.


   echo ${username-`whoami`}

   # echo `whoami` 结果,如果没set username 变量的话

   #   注意:${parameter-default}和${parameter:-default}大部分时候是相同的.

   #   额外的":"在 parameter 被声明的时候(而且被赋空值),会有一些不同.
 
    
  




