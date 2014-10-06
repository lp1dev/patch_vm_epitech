#!/bin/sh
if [ $# == 1 ]
then
    scp res/network-wait root@$1:/usr/sbin/network-wait
    ssh root@$1 chmod +x /usr/sbin/network-wait
else
    echo "Usage : " $0 "ip_vm"
fi
