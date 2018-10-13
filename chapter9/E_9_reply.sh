#!/bin/bash


    # reply.sh


    echo -n "What is your favorite vegettable?"

    read 

    echo     "Your favorite vegetable is $REPLY"


    #   当且仅当再没有变量提供给"read"命令时

    #+  REPLY 才保存最后一个read命令读入的值

    echo 

    echo -n "Wha is your favorite fruit?"

    read frult

    echo "Your favorite fruit is $frult."

    echo "but..."

    echo "Value of \$REPLY is still $REPLY."

    #  $REPLY 还保存着上一个read命令的值

    #+  因为变量$frult 被传入到这个新的"read"命令中

    echo 


    exit 0
