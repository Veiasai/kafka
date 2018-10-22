ip=192.168.2.16

# 创建topic
# bin/kafka-topics.sh --create --zookeeper 192.168.2.16:2181 --replication-factor 3 -partitions 10 --topic 3test

# 查看状态
# bin/kafka-topics.sh --describe --zookeeper 192.168.2.16:2181

# 打开producer
# bin/kafka-console-producer.sh --broker-list 192.168.2.15:9092 --topic 3test

# 打开consumer
# bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test3 --from-beginning
# bin/kafka-producer-perf-test.sh --broker-list 192.168.2.15:9092 192.168.2.16:9092 192.168.2.17:9092 --record-size 200 --num-records 500000 --topick 3test
# bin/kafka-consumer-perf-test.sh --broker-list 192.168.2.15:9092 192.168.2.16:9092 192.168.2.17:9092 --message-size 200 --messages 500000 --topick 3test
dir=kafka_2.12-2.0.0
for i in 5;do
id=slave-${i}
ssh $id << eeooff
cd /root/$dir
bin/kafka-producer-perf-test.sh --topic 3test  --num-records 100000  --throughput 10000 --producer-props bootstrap.servers=ist-slave5:9092,ist-slave6:9092,s07:9092  --record-size 1000 
exit
eeooff
done