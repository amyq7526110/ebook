#!/bin/bash

   cd  ~

   mysql-5.7.17.tar  | tar xvf  -      

#  --未解压的tar 文件 | --然后把它传递到"tar" 中

#  如果"tar" 没能正确的处理 mysql-5.7.17.tar 

#  这就需要使用管道来执行2个单独的步骤

#   这个练习的目的是解档mysql-5.7.17.tar 的 kernel 源文件



    echo "whatever"  | cat -

#   在需要一个文件名的地方,-重定向输出到 stdout(如在 tar 和 cf 命令中),或者从
#   stdin 中接受输入,而不是从一个文件中接受输入.这是在管道中作为一个过滤
#   器,来使用文件定位工具的一种办法

#   [root@pc100 ebook]# file
#   Usage: file [-bchikLlNnprsvz0] [--apple] [--mime-encoding] [--mime-type]
#               [-e testname] [-F separator] [-f namefile] [-m magicfiles] file ...
#          file -C [-m magicfiles]
#          file [--help]
#   [root@pc100 ebook]# file --help
#   Usage: file [OPTION...] [FILE...]
#   Determine type of FILEs.
#   
#         --help                 display this help and exit
#     -v, --version              output version information and exit
#     -m, --magic-file LIST      use LIST as a colon-separated list of magic
#                                  number files
#     -z, --uncompress           try to look inside compressed files
#     -b, --brief                do not prepend filenames to output lines
#     -c, --checking-printout    print the parsed form of the magic file, use in
#                                  conjunction with -m to debug a new magic file
#                                  before installing it
#     -e, --exclude TEST         exclude TEST from the list of test to be
#                                  performed for file. Valid tests are:
#                                  ascii, apptype, compress, elf, soft, tar, tokens, troff
#     -f, --files-from FILE      read the filenames to be examined from FILE
#     -F, --separator STRING     use string as separator instead of `:'
#     -i, --mime                 output MIME type strings (--mime-type and
#                                  --mime-encoding)
#         --apple                output the Apple CREATOR/TYPE
#         --mime-type            output the MIME type
#         --mime-encoding        output the MIME encoding
#     -k, --keep-going           don't stop at the first match
#     -l, --list                 list magic strength
#     -L, --dereference          follow symlinks (default)
#     -h, --no-dereference       don't follow symlinks
#     -n, --no-buffer            do not buffer output
#     -N, --no-pad               do not pad output
#     -0, --print0               terminate filenames with ASCII NUL
#     -p, --preserve-date        preserve access times on files
#     -r, --raw                  don't translate unprintable chars to \ooo
#     -s, --special-files        treat special (block/char devices) files as
#                                ordinary ones
#     -C, --compile              compile file specified by -m
#     -d, --debug                print debugging messages
#   
#   Report bugs to http://bugs.gw.com/


#    file - 

#   abc     

#  /dev/stdin: ASCII text
  
#    file -

#   #!/bin/bash
#   /dev/stdin: Bourne-Again shell script, ASCII text executable

#   现在命令从stdin 中接受，并分析它

#   "-"常用于管道后边的命令,具体参看 33.7 节,来看使用技巧.
#   使用 diff 命令来和另一个文件的一部分进行比较.
#   grep Linux file1 | diff file2 -


#   最后,一个真实世界的使用 tar 命令的例子. 

#   在一个"tarball" 中(经过 tar 和 gzip )处理过的文件

#+  备份最后24小时 当前目录下的 d 所有修改的文件

    BACKUPFILE=backup-`date +%Y%m%d`

#                    在备份中嵌入时间
#                    thanks

    archive=${1:-$BACKUPFILE}

#   如果 在命令行中没有指定的备份文件名
#+  那么将默认使用"backup-MM-DD-YYYY.tar.gz".
   
    cd ~  
  
    tar cvf - `find .  -maxdepth 1  -mtime -1 -type f   -print` > ${archive}.tar

    gzip ${archive}.tar

#  tar -zcvf ${archive}.tar.gz  `find .  -maxdepth 1  -mtime -1 -type f   -print`   

   echo "Directory $PWD backed up in archive file \"${archive}.tar.gz\"."


# Stephane Chazelas 建议使用下边的两种代码之一
# -------------------------------------------------------------------
#
#   find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"

#   使用 gnu 版本的 find.
#
#   find . -mtime -1 -type f -exec tar rvf "$archive.tar" '{}' \;

#   对于其他风格的 UNIX 便于移植,但是比较慢.
# -------------------------------------------------------------------

  

    







