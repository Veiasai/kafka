dir=node_exporter-0.16.0.linux-amd64
for i in 5 6 7;do
    id=slave-${i}
    ssh -t $id << eeooff
cd $dir
nohup ./node_exporter &
eeooff
done