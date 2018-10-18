dir=zookeeper-3.4.13
for i in 5 6 7;do
    id=slave-${i}
    ssh $id << eeooff
    cd $dir/bin
    ./zkServer.sh status
eeooff
done