#!/bin/bash 

echo -e "\033[34m 

   kill
        通过发送一个适当的结束信号,来强制结束一个进程(见 Example 13-6).

 \033[0m"


    # self-destruct.sh

    kill $$    # 脚本将会在此结束自己的进程

               # Recall that "$$" is the script's PID

	       # 回忆一下 ，$$ 就是脚本的PID

    echo "This line not echo"	       

    #  而且shell 会发送一个"Terminated" 消息到stdout

    exit 0 


    # 脚本结束自身进程后

    #+它的返回的退出码是什么

    # sh self-destruct.sh

    # echo $?

    # 143 

    # 143 = 128 + 15

    #             结束信号



 
    
