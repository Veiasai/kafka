dir=kafka_2.12-2.0.0
for i in 5 6 7;do
id=slave-${i}
ssh $id << eeooff
cd /root/$dir
bin/kafka-topics.sh --zookeeper localhost:2181 --list
exit
eeooff
done