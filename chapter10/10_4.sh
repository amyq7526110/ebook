#!/bin/bash



#     10.4 测试与分支(case 和 select 结构)
#    ---------------------------------
#    case 和 select 结构在技术上说不是循环,因为它们并不对可执行的代码块进行迭代.但是和循环
#    相似的是,它们也依靠在代码块的顶部或底部的条件判断来决定程序的分支.
#    在代码块中控制程序分支
#    case (in) / esac
#    在 shell 中的 case 同 C/C++中的 switch 结构是相同的.它允许通过判断来选择代码块中多条
#    路径中的一条.
#    case "$variable" in
#    "$condition1")
#    command...
#    ;;
#    "$condition1")
#    command...;;
#    esac
#    注意:
#    对变量使用""并不是强制的,因为不会发生单词分离.
#    每句测试行,都以右小括号)结尾.
#    每个条件块都以两个分号结尾;;.
#    case 块的结束以 esac(case 的反向拼写)结尾.


select
select 结构是建立菜单的另一种工具,这种结构是从 ksh 中引入的.
select variable [in list]
do
command...
break
done
提示用户选择的内容比如放在变量列表中.注意:select 命令使用 PS3 提示符[默认为(#? )]但是可以修改 PS3.
