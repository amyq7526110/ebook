#!/bin/bash

# kill-process.sh

NOPROCESS=2

process=xxxxxxdsa   # 使用不存在的进程

# 只不过为了掩饰
# 并不想kill任何进程

# 如果, 举个例子, 你想使用这个脚本来断线 Internet,
# process=pppd

t=`pid $process`   # 取得$process 的 pid(进程 id).

# 'kill'必须使用 pid(不能用程序名).

if [ -z "$t" ]
# 如果没这个进程, 'pidof' 返回空.
then

    echo "Process $process was not running."

    echo "Nothing killed."

    exit $NOPROCESS

fi


kill $t

# 对于顽固的进程可能需要'kill -9'.


# 这里需要做一个检查, 看看进程是否允许自身被 kill.
# 或许另一个 " t=`pidof $process` " 或者 ...
# 整个脚本都可以使用下边这句来替换:
#

kill $(pidof -x process_name)

# 但是这就没有教育意义了.


exit 0







