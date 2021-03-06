#!/bin/bash 


  #  timed-input.sh
  

  #  TMOUT=3    在新版本的Bash 也能工作

  TIMELIMIT=3  #  在这个例子上是3秒，也可以设其他的值


  PrintAnswer()
  {
     if [ "$answer" = TIMEOUT ]

     then

          echo $answer

     else     # 不要想混合两个例子

     kill $!  # kill 将不再需要TimerOn 函数运行在后台

              #  $!  是运行在后台的最后一个工作的PID。

     fi	
     

  } 

  TimerOn()
  {

    sleep $TIMELIMIT  && kill -s 14 $$ &

    #  等待三秒然后发送一个信号给脚本

  }

  Int14Vector(){
  
      answer="TIMEOUT"

      PrintAnswer

      exit 14
  
  }
 
  trap Int14Vector 14  # 为了我们的目的,时间中断(14)被破坏了


  echo "What is your favorite vegetable "

  TimerOn

  read answer

  PrintAnswer


  
  #  很明显，这是一个拼凑的实现

  #+ 然而使用"-t" 选项来"read"的话，将会简化这个任务

  #+ 建议你使用 c/c++来写这个应用,
  #+ 使用合适的库来完成这个任务,比如'alarm'和'setitimer'.
  
  exit 0
     
