dir=kafka_2.12-2.0.0
cfg=server.properties
for i in 5 6 7;do
    id=slave-${i}
    rsync -avz --progress ./$cfg $id:/root/$dir/config/
    ssh $id << eeooff
    cd /root/$dir/config
    sed -i 's/broker.id=0/broker.id=$[$i-5]/g' $cfg
eeooff
done

# sed修改brokerid