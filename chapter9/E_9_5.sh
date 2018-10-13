#!/bin/bash 

 
  # am_i_root.sh     


  Root_Uid=0  # Root 的$UID 是 0


  if [ "$UID" -eq "$Root_Uid" ]  # 是否是root用户，请站出来


  then

       echo "You are root."

  else       
   
       echo "You are just an ordinary user (but mom loves you just the same)"

  fi  

  exit 0



  #  下边的代码将不被执行,因为脚本已经退出了.

  #  检验是root用户的一种可选方法

  RootUser_Name=root

  username=`id -nu`       # Or..  username=`whoami`

  if [ "$username"  = "$RootUser_Name" ]

  then

     echo "Rooty,toot,toot,you are root"

  else

     echo "You are just a regular fella."

  fi







