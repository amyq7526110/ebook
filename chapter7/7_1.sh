#!/bin/bash

let "1<2"  return 0 

#  (( 0 && 1 )) return 1


    if cmp a b &> /dev/null

    then

          echo "Files a and b are identical."

    else  
         
	  echo  "Files a and b differ."

    fi


#   非常有用的 "if-grep" 结构：

#   -------------------------

    if grep -q Bash Tests

    then 
       
        echo "File contains at least one occrrence of Bash."

    fi

    word=Linux

    letter_sequence=inu

    if echo "$word" | grep -q "$letter_sequence"
 
    #  "-q"  选项是用来阻止输出

    then 

        echo "$letter_sequence  found in $word."

    else
       
        echo "$letter_sequence found in $word."

    fi 


    if    who &> /dev/null

    then 
        
	echo "Command succeeded."
 
    else 

        echo "Command failed"

    fi	


#   一个if/then 结构可以包含多级比较和tests.

    if echo "Next *if* is part of the comoparison for the first *if*"
  
      if [[  $comparison = "interger"   ]]

         then (( a < b ))

      else
    
          [[  $a < $b ]]   

      fi	  

    then 

        echo '$a is less than $b'

    fi	

     	 

















