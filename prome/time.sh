for i in 5 6 7 8;do
    id=slave-${i}
    ssh $id "timedatectl set-timezone Asia/Shanghai"
done