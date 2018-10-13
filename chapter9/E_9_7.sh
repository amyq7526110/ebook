#!/bin/bash


 #   不一致的"$*"和"$@"行为

 #   $*"和"$@"的古怪行为,

 #+  依赖于它们是否被""引用.

 #   单词拆分和换行的不一致处理.


   set -- "First one" "second" "third:one" "" "Fifth: :one"

 # 设置这个脚本的参数,$1,$2等等

   echo

   echo 'IFS unchanged,using "$*"'

   c=0

   for i in "$*"

   do

      echo "$((c+=1)):[$i]"

   done 

   echo ---


   echo

   echo 'IFS unchanged,using $*'

   c=0

   for i in $*       # 未引用

   do

      echo "$((c+=1)):[$i]"

   done 

   echo ---


   echo

   echo 'IFS unchanged,using "$@"'

   c=0

   for i in  "$@"    

   do

      echo "$((c+=1)):[$i]"

   done 

   echo ---


   echo

   echo 'IFS unchanged,using $@'

   c=0

   for i in  $@    

   do

      echo "$((c+=1)):[$i]"

   done 

   echo ---

   IFS=:

   echo 'IFS=":",useing "$*"'

   c=0 

   for i in "$*"

   do

      echo "$((c+=1)):[$i]"

   done

   echo ---
   echo ---

   IFS=:

   echo 'IFS=":",useing $*'

   c=0 

   for i in $*

   do

      echo "$((c+=1)):[$i]"

   done

   echo ---
   echo ---

   IFS=:

   echo 'IFS=":",useing "$@"'

   c=0 

   for i in "$@"

   do

      echo "$((c+=1)):[$i]"

   done

   echo ---
   echo ---

   IFS=:

   echo 'IFS=":",useing $@'

   c=0 

   for i in $@

   do

      echo "$((c+=1)):[$i]"

   done

   echo ---
   echo ---

   var=$*

   echo 'IFS=":" ,using "$var"(var=$*)'

   o=0

   for i in "$var"

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---
  
   echo 'IFS=":" ,using  $var(var=$*)'  
 
   o=0

   for i in $var

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---

   var="$*"

   echo 'IFS=":" ,using "$var"(var="$*")'

   o=0

   for i in "$var"

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---
  
   echo 'IFS=":" ,using  $var(var="$*")'  
 
   o=0

   for i in $var

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---

   var=$@

   echo 'IFS=":" ,using "$var"(var=$@)'

   o=0

   for i in "$var"

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---
  
   echo 'IFS=":" ,using  $var(var=$@)'  
 
   o=0

   for i in $var

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---

   var="$@"

   echo 'IFS=":" ,using "$var"(var="$@")'

   o=0

   for i in "$var"

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---
   echo ---
  
   echo 'IFS=":" ,using  $var(var="$@")'  
 
   o=0

   for i in $var

   do 

      echo "$((o+=1)):[$i]"

   done

   echo ---

  




