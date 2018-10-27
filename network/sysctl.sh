for i in 5 6 7 8;do
    id=slave-${i}
    ssh $id << eeooff
    cat >> /etc/sysctl.conf << EOF
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.ip_conntrack_max = 10240
EOF
sysctl -p
exit
eeooff
done