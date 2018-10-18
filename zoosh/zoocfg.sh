dir=zookeeper-3.4.13
for i in 5 6 7;do
    id=slave-${i}
    rsync -avz --progress ./zoo.cfg $id:/root/$dir/conf/
    ssh $id > /dev/null 2>&1 << eeooff
    mkdir zookeeper
    cd zookeeper
    mkdir data
    mkdir logs
    echo \$[$i-4] > data/myid
    exit
eeooff
done