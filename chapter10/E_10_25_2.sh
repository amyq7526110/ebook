#!/bin/bash

    # 一个 case 的特殊用法,用来测试命令行参数..3

    E_Param=65  

    case "$1" in 

    "") echo  "Usage: ${0##*/} <filename>";exit $E_Param;;

    # Note that ${0##*/} is ${var##pattern} param substitution. Net result is $0.
    # 注意:${0##*/} 是${var##pattern} 这种模式的替换. 得到的结果是$0.

    -*)FileName=./$1;;   # 如果传递进来的文件名参数($1)以一个破折号开头,
                      
		         #+ 那么用./$1 来代替

    #+ 这样后边的命令将不会把它作为一个选项来解释.

    *)FileName=$1       # 否则，$1

      echo $FileName

      ;;
    esac


    while [  $# -gt 0 ]

    do

 
       case "$1" in 

       -d|--debug) 
        
	         # "-d" or "--debug"parameter?

		 DEBUG=1

		 ;;

	-c|--conf)	 

	          ConfFile="$2"

		  E_ConfFile=66

		  shift 

		  if [ ! -f $ConfFile ];then

		     echo "Error: Supplied file doesn't exist!"

		     exit $E_ConfFile        # 文件发现错误

		  fi

		  ;;


          esac

	  shift

      done	  
