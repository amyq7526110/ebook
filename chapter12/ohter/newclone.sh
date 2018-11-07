#!/bin/bash

#  qcow2 格式的虚拟机模板,及路径  

   basevm=node

   img_dir=/var/lib/libvirt/images

#  设定创建 虚拟机个数

   read -p "number of vm : "  number

   read -p "你是否需要配置网卡，主机名：y/n  :"  ans    

   if    echo $number |  grep -q  [^0-9] 
  
   then 
  
       echo "请输入纯数字"
   
       exit 1

   elif [   $number  -gt  9   -o  $number  -lt  1  ]

   then 

       echo "请输入1～9" 
   
       exit 2

   fi

#  设定 虚拟机最大个数


       counter=0

       vms=0
 
       num=`virsh list  --all | grep rh7 | wc -l`

       if [ $num   -ge   30   ];then 

       echo  -e  "\033[31m you only have 20  virtual  machines  \033[0m"

       exit  3

       fi
   
      echo $counter
#     创建虚拟机

       while [   $vms  -lt  $number   ]

       do
   
           let counter++ 
    
           newvm=rh7_node${counter} 

           if [  -f ${img_dir}/${newvm}.img  ];then

              continue
  
           fi
 
           cd $img_dir           

           qemu-img create  -b node.qcow2 -f qcow2 ${newvm}.img 30G


           # qemu-img create -f qcow2 disk1.img 20G

           #  修改.xml 文件

    Xml_dir=/etc/libvirt/qemu

    memsize=20   #  

    cpu=2        #


    sed 's/node/'${newvm}'/' /root/nsd1806/node.xml  > ${Xml_dir}/${newvm}.xml

    sed -i '/mem/s/20/'$memsize'/' ${Xml_dir}/${newvm}.xml

    sed -i '/Mem/s/20/'$memsize'/' ${Xml_dir}/${newvm}.xml

    sed -i '/vcpu/s/2/'$cpu'/' ${Xml_dir}/${newvm}.xml

       #  sed -rie ":begin; /<disk/,/<.disk/ { /<.disk/! { $! { N; b begin }; }; s/(.*)'$1'(.*)vda(.*)/\1'$1'\2vda\3\n\1disk1\2vdb\3/; };"  ${Xml_dir}/${1}.xml

    sed -rie ":begin; /<inter/,/<.inter/ { /<.inter/! { $! { N; b begin }; }; s/(.*)vbr(.*)/\1vbr\2\n\1private1\2/; };" ${Xml_dir}/${newvm}.xml

    virsh  define  /etc/libvirt/qemu/${newvm}.xml

    echo -e  "created ${newvm}\t\t\t\t\t\t\033[32;1m[Done]\033[0m" 

    let vms++

 
#     修改虚拟机 的网卡，yum ，hostname

           if [   "$ans"  ==  "y"      ];then
        
#  read -p "请输入你要配置的网卡，及ip ，和 虚拟机主机名：" eth ip hostname

           echo -e  "\033[31m  正在为${newvm}进行配置 \033[0m"

           [ ! -d  /home/kvm  ]&& mkdir  /home/kvm

           guestmount -d ${newvm}   -i /home/kvm/
 
           cd /home/kvm
          
           wk=etc/sysconfig/network-scripts
           
           clo_t=/root/myclone.txt
         
           eth=`awk 'NR=='$vms'{print $1}' $clo_t `
           
           ip=`awk 'NR=='$vms'{print $2}'  $clo_t `

           hostname=`awk 'NR=='$vms'{print $3}' $clo_t`
 
           ls  ${wk}/ifcfg-${eth}  &>/dev/null
  
           if  [  $? -eq  0     ];then            

           sed -ri '/BOOTPROTO/s/=(.*)/=static/'  ${wk}/ifcfg-${eth}

           sed -ri '$a IPADDR='$ip''   ${wk}/ifcfg-${eth}

#           sed -ri '$a NETMASK=255.255.255.0'  ${wk}/ifcfg-${eth}
      
#           sed -ri '$a GATEWAY=192.168.4.254'  ${wk}/ifcfg-${eth}
 
#           sed -ri '$a DNS1=8.8.8.8'  ${wk}/ifcfg-${eth}

           sed -ri '/ONBOOT/s/=(.*)/=yes/'  ${wk}/ifcfg-${eth}

           else  
      
           cat  ${wk}/ifcfg-eth0  >  ${wk}/ifcfg-${eth}

           sed -ri  's/eth0/'$eth'/g'   ${wk}/ifcfg-${eth}

           sed -ri '/BOOTPROTO/s/=(.*)/=static/'  ${wk}/ifcfg-${eth}

           sed -ri '$a IPADDR='$ip''   ${wk}/ifcfg-${eth}

           sed -ri '$a NETMASK=255.255.255.0'  ${wk}/ifcfg-${eth}

           sed -ri '/ONBOOT/s/=(.*)/=yes/'  ${wk}/ifcfg-${eth}

           x=`uuidgen`

           sed -ri '/UUID/s/=(.*)/='$x'/'  ${wk}/ifcfg-${eth}

           fi

           echo  $hostname  > etc/hostname

           sed -i  '/IPADDR/d'  etc/rc.d/rc.local
 
           #cp  -r /root/source/*   root
 
           #mkdir root/.ssh
            
#           cp -p /root/.ssh/id_rsa.pub  root/.ssh/authorized_keys
  
#           cp -p /root/.ssh/id_rsa     root/.ssh/
  
#           cp -p /root/.ssh/known_hosts  root/.ssh/

 #          sed -i  '$a chmod 0600 /root/.ssh/id_rsa'  root/.bash_profile
  
  #         sed -i  '$a systemctl restart chronyd'    root/.bash_profile
 
   #        sed -i  '$a systemctl enable chronyd'     root/.bash_profile

           yum=`echo  $ip  | sed -r  's/(.*)\.(.*)\.(.*)\.(.*)/\1\.\2\.\3\.254/'`

           echo "[rhel7]
name=rhel7.0
baseurl=ftp://${yum}/docker
enabled=1
gpgcheck=0"  >  etc/yum.repos.d/pulic.repo
#
#
#           echo "[mon]
#name=mon
#baseurl=ftp://${yum}/ceph/rhceph-2.0-rhel-7-x86_64/MON
#gpgcheck=0
#
#[osd]
#name=osd
#baseurl=ftp://${yum}/ceph/rhceph-2.0-rhel-7-x86_64/OSD
#gpgcheck=0
#
#[tools]
#name=tools
#baseurl=ftp://${yum}/ceph/rhceph-2.0-rhel-7-x86_64/Tools
#gpgcheck=0"   > etc/yum.repos.d/ceph.repo

       echo "192.168.1.11 es1
192.168.1.12 es2
192.168.1.13 es3
192.168.1.14 es4
192.168.1.15 es5
192.168.1.20 logstash
192.168.1.16 kibana"  >> etc/hosts

#      sed -rie ":begin; /^server/,/iburst/ { /iburst/! { $! { N; b begin }; }; s/^/#/g; };"  etc/chrony.conf 

#      sed -i '/server 3/a  server  192.168.4.254 iburst' etc/chrony.conf


            cd 
           
            umount /home/kvm
   
           sleep 3
           fi
   
           virsh start ${newvm}  &> /dev/null
   
           sleep 1

           virsh destroy ${newvm}  &> /dev/null
           virsh start ${newvm}    &> /dev/null  
done





