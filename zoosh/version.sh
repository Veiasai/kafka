dir=zookeeper-3.4.13
for i in 5 6 7;do
    id=slave-${i}
    ssh $id > /dev/null 2>&1 << eeooff
    rm -rf /home/zookeeper/logs/*
    exit
eeooff
done