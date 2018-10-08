#!/bin/bash


variable=\
echo "$variable"

    #  将不能正常工作，将给出一个错误:

    #+ 5_Escape2.sh:行5: : 未找到命令
     
    #  一个单独的转义符，将不能够安全的分配给变量


    #  这里其实真正发生的是 variable=\,这句被 shell 认为是没有完成,\被认为是一个续行符
    #+ 这样,下边的这句 echo,也被认为是上一行的补充.所以,总的来说就是一个非法变量分配

variable=\
23skidoo
echo "$variable"        #   23skidoo

                        #   这句就可以使用,因为这是一个合法的变量分配


variable=\

                        #  \^  转义一个空格

echo "$variable"        #  显示空格

variable=\\

echo "$variable"        # \

variable=\\\
echo "$variable"        # 不能正常工作,给出一个错误
                        # 5_Escape2.sh:行35: \: 未找到命令

#   第一个转义符把第 2 个\转义了,但是第 3 个又变成"裸体的"了,
#+  与上边的例子的原因相同


variable=\\\\

echo "$variable"        # \\

                        # 转了两个

                        # 没问题






















         

