#!/bin/bash

   #   变量的间接引用

   #   ------------------

   #  假设一个变量的值是另一个变量的名字.我们有可能从第一个变量中取得第 2 个变量的值么?

   # 比如,如果 a=letter_of_alphabet 接着 letter_of_alphabet=z,那么我们能从 a 中得到 z 么?

   # 答案是:当然可以,并且这被称为间接引用.它使用一个不常用的符号 eval var1=\$$var2.




