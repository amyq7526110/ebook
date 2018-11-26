#!/bin/bash 

 # I/O 重定向是一种避免可怕的子 shell 中不可存取变量问题的方法.


  # avoid-subshell.sh
  # Matthew Walker 提出的建议.

   Lines=0

   echo 


   cat myfile.txt | while read line;  # (管道会产生子shell)

                    do {
                    
                        echo $line
                        (( Lines++ ));  # 增加这个变量的值
                                        #+但是外部循环却不能存取
                                        # 子shell的问题
                    
                    }

                    done
  
   echo "Number of lines read = $Lines "  # 0

                                          # 错误

   echo "-------------------------------"


   exec 3<>myfile.txt
   
   while read line <&3

   do  {
   
        echo "$line"
        (( Lines++ ));  # 增加这个变量的值

                        # 现在外部循环就可以存取了

                        # 没有子shell 现在就没有问题了
   
   }
       
   done

   exec 3>&-

   echo "Number of lines read = $Lines"

   echo 

   exit 0

  注意事项:
  [1]
  一个文件描述符说白了就是文件系统为了跟踪这个打开的文件而分配给它的一个数字.
  也可以的将其理解为文件指针的一个简单版本. 与 C 中的文件句柄的概念相似.
  [2]
  使用文件描述符 5 可能会引起问题. 当 Bash 使用 exec 创建一个子进程的时候, 子进程
  会继承 fd5(参见 Chet Ramey 的归档 e-mail, SUBJECT: RE: File descriptor 5 is
  held open). 最好还是不要去招惹这个特定的 fd.
