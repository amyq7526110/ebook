#!/bin/bash

  # 字符转换过滤器

  # 注意：

   #  必须使用引用或中括号, 这样做才是合理的. 引用可以阻
   #  止 shell 重新解释出现在tr 命令序列中的特殊字符.
   #  中括号应该被引用起来防止被 shell 扩展.

   #  无论 tr "A-Z" "*" <filename 还是 tr A-Z \* <filename 
   #  都可以将 filename 中的大写字符修改为星号(写到 stdout).
   #  但是在某些系统上可能就不能正常工作了, 而 tr A-Z '[**]'
   #  在任何系统上都可以正常工作.

   #  -d  选项删除指定范围的字符

      echo "abcdef"              # abcdef

      echo "abcdef" | tr -d b-d  #  def

   #  tr -d 0-9 < filename

   #  删除 "filename" 中所有的数字

   # --squeeze-repeats (或 -s) 选项

   #  用来在重复字符序列中除去除第一个字符以外的所有字符
   #  这个选项在删除多余的 whitespace 的时候非常有用.

   echo "XXXXX"  | tr --squeeze-repeats 'X'

   # X

   #  -c "complement" 选项将会 反转 匹配的字符集. 通过这个选项, 
   #  tr 将只会对那些不匹配的字符起作用

   echo "acfdeb123"  | tr -c b-d +

   # +c+d+b++++

   echo 

   # 注意 命令支持 POSIX 字符类.

  echo "abcd2ef1" | tr '[:alpha:]' - 
  
  exit 0
  
  \NNN	八进制值为NNN 的字符(1 至3 个数位)
  \\		反斜杠
  \a		终端鸣响
  \b		退格
  \f		换页
  \n		换行
  \r		回车
  \t		水平制表符
  \v		垂直制表符
  字符1-字符2	从字符1 到字符2 的升序递增过程中经历的所有字符
  [字符*]	在SET2 中适用，指定字符会被连续复制直到吻合设置1 的长度
  [字符*次数]	对字符执行指定次数的复制，若次数以 0 开头则被视为八进制数
  [:alnum:]	所有的字母和数字
  [:alpha:]	所有的字母
  [:blank:]	所有呈水平排列的空白字符
  [:cntrl:]	所有的控制字符
  [:digit:]	所有的数字
  [:graph:]	所有的可打印字符，不包括空格
  [:lower:]	所有的小写字母
  [:print:]	所有的可打印字符，包括空格
  [:punct:]	所有的标点字符
  [:space:]	所有呈水平或垂直排列的空白字符
  [:upper:]	所有的大写字母
  [:xdigit:]	所有的十六进制数
  [=字符=]	所有和指定字符相等的字符
 
