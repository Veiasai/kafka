for i in 5 6 7 8;do
    id=slave-${i}
    ssh $id << eeooff
    yum -y install ntp
    ntpdate cn.pool.ntp.org
    hwclock -w
    hwclock --show
eeooff
done