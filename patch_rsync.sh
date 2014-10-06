#!/bin/sh
if [ $# == 1 ]
then
    echo "Rsync du script manquant sur la VM"
    rsync --chmod=u+rwx,g+rwx,o+rwx res/network-wait root@$1:/usr/sbin/network-wait
    echo "Installation terminée"
    echo "Bon exam"
else
    echo "Usage : " $0 "ip_vm"
fi

