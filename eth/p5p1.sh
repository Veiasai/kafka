cfg=ifcfg-p5p1
for i in 1 2 3 4;do
    id=slave-${i}
    ssh $id << eeooff
    cd /etc/sysconfig/network-scripts/
    sed -i 's/BOOTPROTO=dhcp/BOOTPROTO=none/g' $cfg
    sed -i '\$d' $cfg
    sed -i '\$a\IPADDR=192.168.22.1$i' $cfg
exit
eeooff
done