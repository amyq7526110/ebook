#!/bin/bash


#   \"   表示引号本身

     echo "Hello"                 #  Hello

     echo "\"Hello\",he said."    #  "Hello",he said

#   \$   $号本身,跟在\$后的变量名,将不能扩展     

     echo "\$variable01"          #   $variable01

#   \\   \号本身.     

     echo "\\"                    #   \


     #   相反的

     echo "\""                     

     #   这会出现第 2 个命令提示符,说白了就是提示你命令不全,你再补个"就好了.如果是在脚本里,就会给出一个错误.


 
#     简单的转义

     
      echo \z    #  z

      echo \\z   #  \z

      echo '\z'  #  \z

      echo '\\z' #  \\z

      echo "\z"  #  \z

      echo "\\z" #  \z


      #  命令替换


      echo  `echo \z`           #  z

      echo  `echo \\z`          #  z

      echo  `echo \\\z`         #  \z

      echo  `echo \\\\z`        #  \z 
  
      echo  `echo \\\\\z`       #  \z

      echo  `echo \\\\\\z`      #  \z

      echo  `echo \\\\\\\z`     #  \\z

      echo  `echo "\z"`         #  \z

      echo  `echo "\\z"`        #  \z


cat <<  EOF

\z

EOF
  
       #  \z

cat << EOF

\\z

EOF

       #  \z
    









