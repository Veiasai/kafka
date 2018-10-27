for i in 5 6 7 8;do
    id=slave-${i}
    ssh $id << eeooff
    cat > /etc/hosts << EOF
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
192.168.22.11 ist-slave1
192.168.22.12 ist-slave2
192.168.22.13 ist-slave3
192.168.22.14 ist-slave4
192.168.22.15 ist-slave5
192.168.22.16 ist-slave6
192.168.22.17 s07 s07.c1
192.168.22.18 s08 s08.c1
EOF
exit
eeooff
done