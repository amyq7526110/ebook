#!/bin/bash

    TMOUT=3  # Prompt times out at three secends.

    echo "What is your favoreite song?"

    echo "Quickly now.you only have $TMOUT secends to answer!"

    read song

    if [ -z "$song" ]

    then

        song="(no answer)"

	#   默认响应

    fi


    echo "Your favorite song is $song."

    #   这里有一个更复杂的方法来在一个脚本中实现超时功能.一种办法就是建立一个时间循环,在超时的时候通知脚本.不过,这也需要一个信号处理机制,在超时的时候来产生中断.(参见 Example 29-5) 和  E_9_2.sh


    exit 0
