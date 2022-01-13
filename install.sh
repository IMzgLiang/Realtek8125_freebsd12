#!/bin/bash
echo 'start install process'
cd
cd Realtek8125_freebsd12
cp if_re.ko /boot/kernel/

cd /boot/kernel

chown root:wheel if_re.ko
chmod 0555 if_re.ko

echo 'if_re_load="YES"' >> /boot/loader.conf

kldload /boot/kernel/if_re.ko

echo 'finished'

##reboot 
