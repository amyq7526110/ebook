#!/bin/bash 

echo -e "\033[1m  


文件系统类

mount

加载一个文件系统, 通常都用来安装外部设备, 比如软盘或 CDROM. 文件/etc/fstab 将会
提供一个方便的列表, 这个列表列出了所有可用的文件系统, 分区和设备, 另外还包括某
些选项, 比如是否可以自动或者手动的 mount. 文件/etc/mtab 显示了当前已经 mount 的文件系统和分区(包括虚拟的, 比如/proc).
mount -a 将会 mount 所有列在/ect/fstab 中的文件系统和分区, 除了那些标记有非自动选 项的. 在启动的时候, 在/etc/rc.d 中的一个启动脚本(rc.sysinit 或者一些相似的脚本) 将会这么调用, mount 所有可用的文件系统和分区.

 mount -t iso9660 /dev/cdrom /mnt/cdrom
 # 加载 CDROM
DROM 之前,
这
个设备必须被 unmount, 否则文件系统将会损坏.
 umount /mnt/cdrom
 # 现在你可以按下退出按钮(指的是 cdrom 或软盘驱动器上的退出钮), 并安全的退出光盘.
sync
强制写入所有需要更新的 buffer 上的数据到硬盘上(同步带有 buffer 的驱动器). 如果不是
严格必要的话,一个 sync 就可以保证系统管理员或者用户刚刚修改的数据会安全的在突然
的断点中幸存下来. 在比较早以前, 在系统重启前都是使用 sync; sync (两次, 这样保
证绝对可靠), 这是一种很有用的小心的方法.
有时候, 比如当你想安全删除一个文件的时候(参见 Example 12-55), 或者当磁盘灯开始
闪烁的时候, 你可能需要强制马上进行 buffer 刷新.
losetup
建立和配置 loopback 设备.
 # 方便的方法, 如果 /mnt/cdrom 包含在 /etc/fstab 中




这个多功能的命令甚至可以将一个普通文件 mount 到块设备中, 并且这个文件就好像一个
文件系统一样. mount 可以将文件与一个 loopback 设备相关联来达到这个目的.
ccomplishes that by associating the file with a loopback device. 这种应用通常
都是用来 mount 和检查一个 ISO9660 镜像,在这个镜像被烧录到 CDR 之前. [3]


Example 13-8 在一个文件中创建文件系统
################################Start
Script#######################################
 SIZE=1000000 # 1M

 head -c $SIZE < /dev/zero > file # 建立指定尺寸的文件.
 losetup /dev/loop0 file
# 作为 loopback 设备来建立.
 mke2fs /dev/loop0
# 创建文件系统.
 mount -o loop /dev/loop0 /mnt
# Mount 它.


mkswap
创建一个交换分区或文件. 交换区域随后必须马上使用 swapon 来使能.
swapon, swapoff
使能/禁用 交换分区或文件. 这两个命令通常在启动和关机的时候才有效.
mke2fs
创建 Linux ext2 文件系统. 这个命令必须以 root 身份调用.



mkswap
创建一个交换分区或文件. 交换区域随后必须马上使用 swapon 来使能.
swapon, swapoff
使能/禁用 交换分区或文件. 这两个命令通常在启动和关机的时候才有效.
mke2fs
创建 Linux ext2 文件系统. 这个命令必须以 root 身份调用.
Example 13-9 添加一个新的硬盘驱动器
################################Start
Script#######################################
1 #!/bin/bash
2
3 # 在系统上添加第二块硬盘驱动器.
4 # 软件配置. 假设硬件已经安装了.
5 # 来自于本书作者的一篇文章.
6 # 在"Linux Gazette"的问题#38 上, http://www.linuxgazette.com.
7
8 ROOT_UID=0
9 E_NOTROOT=67
10
11
12
13
14
15
16
17
18
# 这个脚本必须以 root 身份运行.
# 非 root 用户将会产生这个错误.
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Must be root to run this script."
exit $E_NOTROOT
fi
# 要非常谨慎的小心使用!
# 如果某步错了, 可能会彻底摧毁你当前的文件系统.
19
20
21 NEWDISK=/dev/hdb
# 假设/dev/hdb 空白. 检查一下!
22 MOUNTPOINT=/mnt/newdisk # 或者选择另外的 mount 点.
23
24
25 fdisk $NEWDISK
26 mke2fs -cv $NEWDISK1
# 检查坏块, 详细输出.
/dev/hdb1, *不是* /dev/hdb!
27 # 注意:28 mkdir $MOUNTPOINT
29 chmod 777 $MOUNTPOINT
# 让所有用户都具有全部权限.
30
31
32 # 现在, 测试一下...
33 # mount -t ext2 /dev/hdb1 /mnt/newdisk
34 # 尝试创建一个目录.
35 # 如果工作起来了, umount 它, 然后继续.
36
37 # 最后一步:
38 # 将下边这行添加到/etc/fstab.
39 # /dev/hdb1 /mnt/newdisk ext2 defaults 1 1
40
41 exit 0
################################End
Script#########################################
参见 Example 13-8 和 Example 28-3.
tune2fs
调整 ext2 文件系统. 可以用来修改文件系统参数, 比如 mount 的最大数量. 必须以 root 身
份调用.
注意: 这是一个非常危险的命令. 如果坏了, 你需要自己负责, 因为它可能会破坏你的文
件系统.
dumpe2fs
打印(输出到 stdout 上)非常详细的文件系统信息. 必须以 root 身份调用.
root# dumpe2fs /dev/hda7 | grep 'ount count'
dumpe2fs 1.19, 13-Jul-2000 for EXT2 FS 0.5b, 95/08/09
Mount count:
6
Maximum mount count:
20
hdparm
列出或修改硬盘参数. 这个命令必须以 root 身份调用, 如果滥用的话会有危险.
fdisk
在存储设备上(通常都是硬盘)创建和修改一个分区表. 必须以 root 身份使用.
注意: 谨慎使用这个命令. 如果出错, 会破坏你现存的文件系统.
fsck, e2fsck, debugfs
文件系统的检查, 修复, 和除错命令集合.fsck: 检查 UNIX 文件系统的前端工具(也可以调用其它的工具). 文件系统的类型一般都是
默认的 ext2.
e2fsck: ext2 文件系统检查器.
debugfs: ext2 文件系统除错器. 这个多功能但是危险的工具的用处之一就是(尝试)恢复
删除的文件. 只有高级用户才能用.
上边的这几个命令都必须以 root 身份调用, 这些命令都很危险, 如果滥用的话会破坏文件
系统.
badblocks
检查存储设备的坏块(物理损坏). 这个命令在格式化新安装的硬盘时或者测试备份的完整
性的时候会被用到. [4] 举个例子, badblocks /dev/fd0 测试一个软盘.
badblocks 可能会引起比较糟糕的结果(覆盖所有数据), 在只读模式下就不会发生这种情
况.如果 root 用户拥有需要测试的设备(通常都是这种情况), 那么 root 用户必须调用这个
命令.
lsusb, usbmodules
lsusb 命令会列出所有 USB(Universal Serial Bus 通用串行总线)总线和使用 USB 的设备.
usbmodules 命令会输出连接 USB 设备的驱动模块的信息.
root# lsusb
Bus 001 Device 001: ID 0000:0000
Device Descriptor:
bLength
18
bDescriptorType
1
bcdUSB
1.00
bDeviceClass
9 Hub
bDeviceSubClass
0
bDeviceProtocol
0
bMaxPacketSize0
8
idVendor
0x0000
idProduct
0x0000
. . .
mkbootdisk
创建启动软盘, 启动盘可以唤醒系统, 比如当 MBR(master boot record 主启动记录)坏掉
的时候. mkbootdisk 命令其实是一个 Bash 脚本, 由 Erik Troan 所编写, 放在/sbin 目录中.
chroot修改 ROOT 目录. 一般的命令都是从$PATH 中获得的, 相对的默认的根目录是 /. 这个命令
将会把根目录修改为另一个目录(并且也将把工作目录修改到那). 出于安全目的, 这个命
令时非常有用的, 举个例子, 当系统管理员希望限制一些特定的用户, 比如 telnet 上来的
用户, 将他们限定到文件系统上一个安全的地方(这有时候被称为将一个 guest 用户限制在
"chroot 监牢"中). 注意, 在使用 chroot 之后, 系统的二进制可执行文件的目录将不再
可用了.
chroot /opt 将会使得原来的/usr/bin 目录变为/opt/usr/bin. 同样,
chroot /aaa/bbb /bin/ls 将会使得 ls 命令以/aaa/bbb 作为根目录, 而不是以前的/.
如果使用 alias XX 'chroot /aaa/bbb ls', 并把这句放到用户的~/.bashrc 文件中的话,
这将可以有效地限制运行命令"XX"时, 命令"XX"可以使用文件系统的范围.
当从启动盘恢复的时候(chroot 到 /dev/fd0), 或者当系统从死机状态恢复过来并作为进
入 lilo 的选择手段的时候, chroot 命令都是非常方便的. 其它的应用还包括从不同的文件
系统进行安装(一个 rpm 选项)或者从 CDROM 上运行一个只读文件系统. 只能以 root 身份调
用,
小心使用.
注意: 由于正常的$PATH 将不再被关联了, 所以可能需要将一些特定的系统文件拷贝到
chrooted 目录中.
lockfile
这个工具是 procmail 包的一部分(www.procmail.org). 它可以创建一个锁定文件, 锁定文
件是一种用来控制存取文件, 设备或资源的标记文件. 锁定文件就像一个标记一样被使用,
如果特定的文件, 设备, 或资源正在被一个特定的进程所使用("busy"), 那么对于其它进
程来说, 就只能受限进行存取(或者不能存取).
1 lockfile /home/bozo/lockfiles/$0.lock
2 # 创建一个以脚本名字为前缀的写保护锁定文件.
锁定文件用在一些特定的场合, 比如说保护系统的 mail 目录以防止多个用户同时修改, 或
者提示一个 modem 端口正在被存取, 或者显示 Netscape 的一个实例正在使用它的缓存. 脚
本
可以做一些检查工作, 比如说一个特定的进程可以创建一个锁定文件, 那么只要检查这个
特定的进程是否在运行, 就可以判断出锁定文件是否存在了. 注意如果脚本尝试创建一个
已经存在的锁定文件的话, 那么脚本很可能被挂起.
一般情况下, 应用创建或检查锁定文件都放在/var/lock 目录中. [5] 脚本可以使用下面
的方法来检测锁定文件是否存在.
1 appname=xyzip
2 # 应用 "xyzip" 创建锁定文件 "/var/lock/xyzip.lock".
3
4 if [ -e "/var/lock/$appname.lock" ]5 then
6 ...
flock<rojy bug>
flock 命令比 lockfile 命令用得少得多.Much less useful than the lockfile command
is flock. It sets an "advisory" lock on a file and then executes a command
while the lock is on. This is to prevent any other process from setting a lock
on that file until completion of the specified command.
1 flock $0 cat $0 > lockfile__$0
2 # Set a lock on the script the above line appears in,
3 #+ while listing the script to stdout.
注意: 与 lockfile 不同, flock 不会自动创建一个锁定文件.
mknod
创建块或者字符设备文件(当在系统上安装新硬盘时可能是必要的). MAKEDEV 工具事实上
具有 nknod 的全部功能, 而且更容易使用.
MAKEDEV
创建设备文件的工具. 必须在/dev 目录下, 并且以 root 身份使用.
root# ./MAKEDEV
这是 mknod 的高级版本.
tmpwatch
自动删除在指定时间内未被存取过的文件. 通常都是被 cron 调用, 用来删掉老的 log 文件.
备份类
dump, restore
dump 命令是一个精巧的文件系统备份工具, 通常都用在比较大的安装和网络上. [6] 它
读取原始的磁盘分区并且以二进制形式来写备份文件. 需要备份的文件可以保存到各种各
样的存储设备上, 包括磁盘和磁带. restore 命令用来恢复 dump 所产生的备份.
fdformat
对软盘进行低级格式化.








\033[0m
