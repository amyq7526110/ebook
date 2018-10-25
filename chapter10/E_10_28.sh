#!/bin/bash



  # isalpha.sh 使用"case"结构来过滤字符串.a

  Success=0

  Failure=1

  isalpha(){
  
  if [ -z "$1" ]
  then

     return $Failure
  fi

  case "$1" in

  [a-Z]*) return $Success  # 以一个字母开头
  ;;

  *)   return $Failure
  ;;

  esac
  }     # 同 C 语言的"isalpha()"函数相比较.

  isalpha2(){  # 测试是否*整个字符串*为字母表字符.

   [  $#  -eq 1 ] || return $Failure

   case "$1" in

   *[!a-Z]*|"") return $Failure ;;

   *)  return $Success ;;

   esac
  
  
  
  } 
 
  isdigit() 
  {
      # 测试是否*整个字符串*都是数字.
      # 换句话说就是测试是否是整数变量.

      case "$1" in 

      *[!0-9]*"") return $Failure ;;

      *)  return $Success ;;

      esac

  }

  check_var(){
  
      # 测试 isalpha() 

      if isalpha "$@"

      then 

         echo "\"$*\" begin with an alpha character."

	 if isalpha2 "$@"

	 then   # 不需要测试第一个字符是否是 non-alpha.

	    echo "'$*' contains only alpha characters."

	  else
	     
	    echo "'$*' contains at least one non-alpha character."  

	  fi
	  
       else	  

           echo "'$*' begins with a non-alpha character."

       fi  # 如果没有参数传递进来,也是"non-alpha".

       echo 
  }

  digit_check(){
  

     if isdigit "$@"

     then 

         echo "'$*' contains only digits[0-9]."

     else 

         echo "'$*' has at least one non-digit character"

     fi

     echo
         
  
  }    
  
  isfloat(){
 
    i=0

     echo $@ | awk -F. 

    j=`echo $@ | wc -L`
   
    echo $j

    x=${@%.*}

    u=`echo $x | wc -L`
     
    [ $u -eq $j ]&& return  1

   
 
    y=${@#*.}

   
    
    case $x in

    *[!0-9]*) return   1 ;;

    *)        return   $i ;;

    esac 

    case $y in

    *[!0-9]*) return   1 ;;

    *)        return   $i   ;;

    esac 
  }
  
  float_check(){
     
     if isfloat "$@"

     then 
          echo " shi float"
    
     else 
          echo "bu shi float"

     fi	  
    
  }


    a=23skidoo
    b=H3llo
    c=-What?
    d=What?
    e=`echo $b`
    
    f=AbcDef
    g=27234
    h=27a34
    i=27.34
    
    check_var  $a
    check_var  $b
    check_var  $c
    check_var  $d
    check_var  $e
    check_var  $f
    check_var  # 没有参数传进来,将发生什么?
    
    digit_check $g
    digit_check $h
    digit_check $i
    
    float_check  1.112.5



    exit 0
