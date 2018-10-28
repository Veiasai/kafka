dir=kafka_2.12-2.0.0
cfg=server.properties
start=kafka-server-start.sh
for i in 5 6 7;do
id=slave-${i}
rsync -avz --progress ./$cfg $id:/root/$dir/config/
rsync -avz --progress ./$start $id:/root/$dir/bin/
ssh $id << eeooff
cd /root/$dir/config
sed -i 's/broker.id=0/broker.id=$[$i-5]/g' $cfg
exit
eeooff
done

# sed修改brokerid