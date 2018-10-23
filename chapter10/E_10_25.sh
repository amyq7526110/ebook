#!/bin/bash

   # 未经处理的地址资料





   clear # 清屏

   echo -e "\033[31m       Contact List"

   echo "       ------------"

   echo   -e  "\033[36m"

   echo   "Choose one of the following persons "
   
   echo 

   echo   " [E]vans,Roland"

   echo   " [J]ones,Mildred"

   echo   " [S]mith,Julie"

   echo   " [Z]ane,Morris"


   echo -e "\033[0m"

   while :
            
   do

   read  -a  person
   

   for i in ${person[@]}

   do  
 
   case "$i" in 

   e|E)

   # 接受大写或小写输入
   echo -e "\033[33m "
   echo
   echo "Roland Evans"
   echo "4321 Floppy Dr."
   echo "Hardscrabble, CO 80753"
   echo "(303) 734-9874"
   echo "(303) 734-9892 fax"
   echo "revans@zzy.net"
   echo "Business partner & old friend"
   echo -e "\033[0m"
   ;;
  
   # 注意，在每个选项后边都要以;;结尾

   J|j)

   echo -e "\033[33m "
   echo
   echo
   echo "Mildred Jones"
   echo "249 E. 7th St., Apt. 19"
   echo "New York, NY 10009"
   echo "(212) 533-2814"
   echo "(212) 533-9972 fax"
   echo "milliej@loisaida.com"
   echo "Ex-girlfriend"
   echo "Birthday: Feb. 11"
   echo -e "\033[0m"
   ;;

   *)

   echo
   echo "Not yet in database."
   exit  0
   ;;
   
  esac   
   
  done
  done
   

#  echo -e "\033[30m 黑色字 \033[0m"
#  echo -e "\033[31m 红色字 \033[0m"
#  echo -e "\033[32m 绿色字 \033[0m"
#  echo -e "\033[33m 黄色字 \033[0m"
#  echo -e "\033[34m 蓝色字 \033[0m"
#  echo -e "\033[35m 紫色字 \033[0m"
#  echo -e "\033[36m 天蓝字 \033[0m"
#  echo -e "\033[37m 白色字 \033[0m"
