#!/bin/sh
if [ $# == 1 ]
then
    echo "Copie du script sur la VM exam"
    scp res/network-wait root@$1:/usr/sbin/network-wait
    echo "Chmod +x sur le script"
    ssh root@$1 chmod +x /usr/sbin/network-wait
    echo "Patch installé"
    echo "Bon exam !"
else
    echo "Usage : " $0 "ip_vm"
fi
