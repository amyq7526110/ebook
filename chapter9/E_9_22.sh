#!/bin/bash

  #  ind-ref.sh: 间接变量引用

  #  存取一个变量的值的值

  a=letter_of_alphabet   #  变量"a"的值是另一个变量的名字

  letter_of_alphabet=z


  echo 

  #  直接引用

  echo "a = $a"     # a = letter_of_alphabet

  #  间接引用

  eval a=\$$a

  echo "Now a = $a"   # Now a = z

  echo 

  #  现在让我们修改第二个引用的值

  t=table_cell_3

  table_cell_3=24

  echo "\"table_cell_3\" = $table_cell_3"  # "table_cell_3" = 24

  echo -n "dereferenced \"t\" = "; eval echo \$$t  # 间接引用 "t" =24


  #  在这个简单的例子里，下面的表达式也能正常的工作(为什么？)

  eval t=\$$t;echo "'t' = $t"


  echo

  t=table_cell_3


  New_Val=387

  table_cell_3=$New_Val

  echo "changing value of \"table_cell_3\" to $New_Val."

  echo "\"table_cell_3\" now"; eval echo \$$t

  #  "eval" 将获得两个参数"echo" 和 "\$$t" (与$table_cell_3等价)


  echo 


  #   (Thanks)


  # 另一个方法是使用${!t}符号,见"Bash, 版本 2"小节.
  # 也请参阅 ex78.sh.
  
   exit 0



  





