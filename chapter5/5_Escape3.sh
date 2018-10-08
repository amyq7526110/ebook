#!/bin/bash


     file_list="/bin/cat /bin/gzip /bin/more /usr/bin/less /usr/bin/ab"

     #  列出的文件都作为命令的参数

     #  Add two files to list,and list all.

     #  加两个文件到list中，并列出全部

     ls -l /usr/bin/tar  /bin/vim $file_list


     echo "---------------------------------------------------"


     #  如果转义两个空格，会发生什么

     ls -l /usr/bin/tar\ /bin/vim\ $file_list


     #  错误: 因为前 3 个路径名被合并成一个参数传给了'ls -l'

     #  因为 2 个转义符阻止了参数(单词)分离





   
