file=node_exporter-0.16.0.linux-amd64.tar

for i in 1 2 3 4 8;do
    id=slave-${i}
    rsync -avz --progress ./node_exporter-0.16.0.linux-amd64.tar $id:/root
    ssh $id "tar -xvf $file"
done