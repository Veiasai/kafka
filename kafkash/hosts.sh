for i in 5 6 7;do
    id=slave-${i}
    ssh $id << eeooff
    cat >> /etc/hosts << EOF
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
192.168.2.15 ist-slave5
192.168.2.16 ist-slave6
192.168.2.17 s07
192.168.2.18 s08
EOF
exit
eeooff
done