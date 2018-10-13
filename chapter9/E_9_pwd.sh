#!/bin/bash 

   E_WRONG_DIRECTORY=73

   clear    #  清屏

   TargetDirectory=/home/bozo/projects/GreatAmericanNovel

   mkdir  -p $TargetDirectory

   touch  $TargetDirectory/haha.txt

   cd  $TargetDirectory

   echo "Deleting state file in $TargeDirectory"

   if [ "$PWD" != "$TargetDirectory" ]

   then  # 防止偶然删除错误的目录

         echo "Wrong directory!"

	 echo "in $PWD,rather than $TargetDirectory" 

	 echo "Bailing out!"

         exit  $E_WRONG_DIRECTORY

   fi 	 


   rm -rf *

   rm .[a-zA-Z0-9]*

   rm .[A-Za-z0-9]*

   #   rm -f .[^.]* ..?*

   #   (shopt -s dotglob;rm -f *)  也行

   #   文件名能包含0-255范围内的所有字符 ，除了"/"

   #   删除以各种诡异字符开头的文件


   rm -rf .[^a-Z0-9]*

 
   echo  

   echo "DONE."

   echo "Old files deleted in $TargetDirectory."



   exit 0





