#!/bin/bash
  
     # cut 

     #  一个从文件中提取特定域的工具，这个命令与awk 
     #  使用的 print $N 命令很相似, 但是更受限. 在脚
     #  本中使用 cut 命令会比使用 awk 命令来得容易一些.
     #  最重要的选项就是 -d(字段定界符) 和 -f (域分隔符) 选项.

     cut -d ' ' -f1,2 /etc/mtab

     uname -a | cut -d" " -f1,3,11,12

#    使用 cut 命令从 e-mail 中提取消息头:

#    grep '^Subject:' read-messages | cut -c10-80

#    Re: Linux suitable for mission-critical apps?
#    MAKE MILLIONS WORKING AT HOME!!!
#    Spam complaint
#    Re: Spam complain 

     #  使用 cut 命令来分析一个文件

     #  列出 所有在/etc/passwd 中的文件

     Filename=/etc/passwd

     for user in `cat -d; -f1 $Filename` 

     do  
        
	echo $user

     done

     # Thanks, Oleg Philon for suggesting this.

     # cut -d';' -f2,3 filename 等价于 awk -F'[ ]' '{print $2,$3}' filename

     # 注意: 

     # 你甚至可以指定换行符作为字段定界符. 这个小伎俩实际上就是在命令行上插入一个换行(RETURN).(译者: linux 使用 lf 作为换行符的).

     # bash$ cut -d'
     #' -f3,7,19 testfile
     #This is line 3 of testfile.
     #This is line 7 of testfile.
     #This is line 19 of testfile.
     #Thank you, Jaka Kranjc, for pointing this out.



    
