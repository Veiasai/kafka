dir=node_exporter-0.16.0.linux-amd64
for i in 1 2 3 4 8;do
    id=slave-${i}
    scp ./nohupnode.sh $id:/root/$dir
    ssh $id << EOF
    cd $dir
    ./nohupnode.sh
EOF
done