#!/bin/bash 


#     [[]]结构比 Bash 的[]更加灵活,这是一个扩展的 test 命令,
#+    从 ksh88 继承过来的.

#     注意:在[[]]结构中,将没有文件扩展或者是单词分离,
#+    但是会发生参数扩展和命令替换.


    file=/etc/passwd


    if [[ -e $file ]]

    then 
      
        echo "Password file exists."

    fi	

#      注意:使用[[]],而不是[],能够阻止脚本中的许多逻辑错误.
#+     比如,尽管在[]中将给出一个错误,
#+     但是&&,||,<>操作还是能够工作在一个[[]]test 之中.
#      注意:在 if 后边,test 命令和[]或[[]]都不是必须的.如下:
   
      
        dir=/home/bozo

	if cd "$dir" 2> /dev/null ;then #  2> 是将错误信息屏蔽

	   echo "Now in $dir."

        else 
	  
	   echo "can't change to $dir."

	fi

# 	if 命令将返回if后面的命令的退出码

#       与此相似当在一个在使用与或列表结构的时候,
#+      test 或中括号的使用,也并不一定非的有 if 不可

    
      var1=20

      var2=22

      [ "$var1" -ne "$var2"  ]&& echo "$var1 is not equal to $var2"

      home=/home/bozo

      [ -d "$home" ] || echo "$home directory does not exist."











  













