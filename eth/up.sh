cfg=ifcfg-p5p1
for i in 1 2 3 4;do
    id=slave-${i}
    ssh $id << eeooff
    ifup p5p1
exit
eeooff
done