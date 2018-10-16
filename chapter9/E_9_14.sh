#!/bin/bash 


#   检查一些系统的环境变量

#   这是一个好习惯

#   比如，如果$USER(在console上的用户名)没被set,

#+  系统就不会认你

    :${HOSTNAME?} ${USER?}  ${HOME?}  ${MAIL?}

    echo 

    echo "Name of the machine is $HOSTNAME."

    echo "You are $USER."

    echo "You home directory is $HOME."

    echo "Your mail I NBOX is located in $MAIL"

    echo

    echo "If you are reading this message."

    echo "critical environmental variables have been set."

    echo 


#   ----------------------------------------------------

#    ${variablename?} 结果也可以用来

#+   在一个脚本中检查是否被set.

    ThisVariable=Value-of-ThisVariable

#   注意,顺便提一下,这个字符串变量可能在它们的名字中会被设置

#+  非法字符

    :${ZZXy23AB?"ZZXy23AB has not been set."}

    #  如果ZZXy23AB 没被 set.

    #+ 那么这个脚本将一个 error message 终止。

    #  你可以指定错误消息

    #  :{$variablename?"ERROR MESSAGE"}
  
    # E_9_14.sh:行45: ZZXy23AB: ZZXy23AB has not been set. 

    

    #  同样的结果： 

                    dummy_variable=${ZZXy23AB?}

                    dummy_variable=${ZZXy23AB?"ZXy23AB has not been set."}

                    echo ${ZZXy23AB?}  > /dev/null


    #  同 set -u 命令来比较这些检查变量是否被set的方法



    echo "You will not see this message,becauser script already terminated"


    HERE=0

    exit $HERE   #  Will Not exit here .

    #  事实上，这个脚本将返回1作为退出状态


      		    

 		    


   


