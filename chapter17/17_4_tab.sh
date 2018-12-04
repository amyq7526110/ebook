#!/bin/bash 


# 与之前的例子相同

# - 选项对于 here docutment 来说,<<-
#+ 可以抑制文档体前边的 tab,
#+ 而*不*是空格 *not* spaces.

cat <<-EOF

This is line 1 of the message.
	This is line 2 of the message.
	This is line 3 of the message.
	This is line 4 of the message.
	This is the last line of the message.
EOF

	 # 脚本在输出的时候左边将被刷掉.
	 # 就是说每行前边的 tab 将不会显示.
	
	 # 上边 5 行"消息"的前边都是 tab, 不是空格.
	 # 空格是不受<<-影响的.
	
	 # 注意, 这个选项对于*嵌在*中间的 tab 没作用.
	 exit 0
