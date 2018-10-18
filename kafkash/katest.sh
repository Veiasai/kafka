ip=192.168.2.16

# 创建topic
bin/kafka-topics.sh --create --zookeeper 192.168.2.16:2181 --replication-factor 3 -partitions 1 --topic 3test

# 查看状态
bin/kafka-topics.sh --describe --zookeeper 192.168.2.16:2181

# 打开producer
bin/kafka-console-producer.sh --broker-list 192.168.2.15:9092 --topic 3test

# 打开consumer
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic 3test --from-beginning