
dir=kafka_2.12-2.0.0
for i in 5 6 7;do
    id=slave-${i}
    ssh $id << eeooff
    cd $dir
    bin/kafka-server-stop.sh
eeooff
done