name=cruise-control-metrics-reporter-2.0.6.jar
dir=/root/kafka_2.12-2.0.0
for i in 5 6 7;do
    id=slave-${i}
    ssh $id "rm -f /root/kafka_2.12-2.0.0/libs/cruise-control*"
    scp ~/Downloads/$name $id:/root/kafka_2.12-2.0.0/libs
done