for i in 1 2 3 4;do
    id=slave-${i}
    ssh $id << eeooff
    cat >> /etc/hosts << EOF
192.168.2.15 ist-slave5
192.168.2.16 ist-slave6
192.168.2.17 s07
192.168.2.18 s08
EOF
exit
eeooff
done