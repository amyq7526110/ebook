#!/bin/bash
  
   
   # match-string.sh: 简单字符串匹配

   match_string()
   {
   
      Match=0

      NoMatch=90

      Params=2       # 函数需要两个参数

      Bad_Params=91  

      [ $# -eq $Params ] || return $Bad_Params

      case "$1" in

      "$2") return $Match;;

      *)  return $NoMatch;;

      esac
   
   }

   a=one 

   b=two

   c=three

   d=two

   match_string $a  # 参数个数错误

   echo $?             # 91

   match_string $a $b  # 不匹配

   echo $?             # 90

   match_string $b $d  # 匹配

   echo $?

   exit  0







