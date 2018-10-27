dir=kafka_2.12-2.0.0
for i in 5 6 7;do
    id=slave-${i}
    ssh $id > /dev/null 2>&1 << eeooff
    rm -rf /home/kafka/data_logs/*
    exit
eeooff
done