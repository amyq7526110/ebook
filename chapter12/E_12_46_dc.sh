#!/bin/bash 

    #  dc
    #  dc (桌面计算器 desk calculator) 工具是面向栈的并且使用 RPN 
    #  (逆波兰表达式"Reverse Polish Notation" 又叫"后缀表达式"). 
    #  与 bc 命令很相像 , 但是这个工具具备好多只有编程语言才具备的能力.

    #  (译者注: 正常表达式
    #  逆波兰表达式
    #  a+b
    #  a+(b-c)
    #  a+(b-c)*d
    #  a,b,+
    #  a,b,c,-,+
    #  a,d,b,c,-,*,+
    #  )
    #  绝大多数人都避免使用这个工具, 因为它需要非直觉的 RPN 输入.
    #  但是, 它却有特定的 用途.

    # hexconvert.sh 将 10 进制数字转换为 16 进制数字

    E_NOARGS=65   # 缺省命令行参数

    E_BADARGS=66  # 

    BASE=16       # 16进制

    if [ -z  "$1" ]

    then  
        
	echo "Usgae: $0 number"

	exit $E_NOARGS

    fi

    #  练习: 添加命令行参数检查.

    check_num(){
    
      
    if   echo $1 |  grep -q  [^0-9]

    then 

         echo "Usgae: $0 number"

	 exit  $E_BADARGS

    fi 	 
    
    }    

    check_num $1
    hexcvt(){
  

      if [  -z "$1" ]
      then 
          echo 0
	  return  # 如果没有参数传递到这个函数中就 "return" 0.

      fi 


      echo ""$1" "$BASE" o p" | dc 
        # "o" 设置输出的基数(数制).
	# "p" 打印栈顶.

	# man dc

      return	


    }   
         
    hexcvt  "$1"

    exit 0
             




  


















