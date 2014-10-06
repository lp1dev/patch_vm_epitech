#!/bin/sh
if [ $# == 1 ]
then
    rsync --chmod=u+rwx,g+rwx,o+rwx res/network-wait root@$1:/usr/sbin/network-wait
else
    echo "Usage : " $0 "ip_vm"
fi

