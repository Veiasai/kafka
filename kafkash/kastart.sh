dir=kafka_2.12-2.0.0
for i in 5 6 7;do
    id=slave-${i}
    ssh $id << eeooff
    cd $dir
    nohup bin/kafka-server-start.sh config/server.properties >> kafka.start.out &
eeooff
done