for i in 5 6 7;do
    id=slave-${i}
    ssh $id "sed -i '1,5d' /etc/hosts"
done