
for i in 5 6 7;do
    id=slave-${i}
    ssh $id << eeooff
    ps -ef |grep kafka |awk '{print \$2}'|xargs kill -9
eeooff
done