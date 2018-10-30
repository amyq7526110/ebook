#!/bin/bash

    #  处理文本和文本文件的命令

    #  sort
    #  文件排序, 通常用在管道中当过滤器来使用. 这个命令可以依据指定的关键字或指定的字符位置, 对文件行进行排序. 使用 -m 选项, 它将会合并预排序的输入文件. 想了解这个命令的全部参数请参考这个命令的 info 页. 见 Example 10-9, Example 10-10, 和Example A-8.

    #  tsort

    #  拓扑排序 ,读取以空格分隔的有序对, 并且依靠输入模式进行排序.

    #  uniq

    #  这个过滤器将会删除一个已排序文件中的重复行.这个命令经常出现在 sort 命令的管道后边.

    #  cat list-1 list-2 list-3 | sort | uniq > final.list

    #  将 3 个文件连接起来,
    #  将它们排序,
    #  删除其中重复的行,
    #  最后将结果重定向到一个文件中.
    #  -c 选项的意思是在输出行前面加上每行在输入文件中出现的次数.
    #  bash$ cat testfile
    #  This line occurs only once.
    #  This line occurs twice.
    #  This line occurs twice.
    #  This line occurs three times.This line occurs three times.
    #  This line occurs three times.
    #  bash$ uniq -c testfile
    #  1 This line occurs only once.
    #  2 This line occurs twice.
    #  3 This line occurs three times.
    #  bash$ sort testfile | uniq -c | sort -nr
    #  3 This line occurs three times.
    #  2 This line occurs twice.
    #  1 This line occurs only once.
    #  sort INPUTFILE | uniq -c | sort -nr 命令 先对 INPUTFILE 排序, 
    #  然后统计 每行出现的次数, 最后的(-nr 选项将会产生一个数字的反
    #  转排序). 这种命令模版一般都用来分析 log 文件或者用来分析字典列表,
    #  或者用在那些需要检查文本词汇结构的地方.
