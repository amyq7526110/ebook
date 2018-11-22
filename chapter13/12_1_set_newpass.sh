#!/bin/bash


#  setnew-password.sh: 只用于说明目的.

 # 如果真正运行这个脚本并不是一个好主意.
 # 这个脚本必须以 root 身份运行.


 ROOT_UID=0   # root 的 $uid 0

 E_Wrong_User=65  # 不是 root ?

 E_NoSuchUser=70

 Success=0

 if [ "$UID"  -ne "$ROOT_UID" ]

 then 

     echo;echo "Only root can run this script.";echo

     exit $E_Wrong_User

 else
     echo 

     echo "You should know better than to ran this script,root."

     echo "Even root users get the blues.."

     echo 
 fi



 username=bozo

 NewPassword=123456

 # 检查bozo 是否在这里.
  
 grep -q "$username" /etc/passwd

 if [ $? -ne $Success ]

 then 
     echo  "User $username does not exist" 
     echo  "NO password change"
     useradd $username
     # exit $E_NoSuchUser
 
 fi

 echo "$NewPassword" | passwd --stdin "$username"

 # # 在脚本中使用'passwd'命令是很危险的.

 exit 0


     
   

    
