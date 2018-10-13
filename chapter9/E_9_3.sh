#!/bin/bash


#  stty 也是一种选择.
#  Example 9-3 再来一个时间输入

 # Stephane Chazelas 编写,
 #+ 本书作者进行了一些修改.

 IntErval=5  # timeout 时间间隔

 timedout_read(){
 
    timeout=$1

    varname=$2

    old_tty_settings=`stty -g`

    stty -icanon min 0 time ${timeout}0

    eval read $varname   #  或者就是read $varname

    stty "$old_tty_settings"

    #  查看"stty" 的 man 页


 }

    echo ; echo -n "What's your name?Quick!"

    timedout_read $IntErval your_name


    #  这种方法可能不是每个终端类型都可以正常使用的

    #  最大的timeout依赖于具体的终端

    #+ (一般都是 25.5 秒)

    echo

    if [  ! -z $"your_name"   ]  # if name input before timeout...

    then

        echo "Your name is $your_name."

    else 

        echo "Timed out"

    fi


    #   这个脚本的行为可能与"timed-input.sh"有点不同.
    #   在每次按键的时候,计数器都会重置.


    exit 0
      


  
