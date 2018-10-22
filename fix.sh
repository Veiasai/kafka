for i in 1 2 3 4 5 6 7 8;do
    id=slave-${i}
    ssh $id << eeooff
    source /etc/profile
eeooff
done


./kafka-cruise-control-start.sh config/cruisecontrol.properties 9091