for i in 5 6 7;do
    id=slave-${i}
    ssh $id "rm -rf /root/zookeeper-3.4.13/data/*"
done