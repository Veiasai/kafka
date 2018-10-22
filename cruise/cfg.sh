name=cruisecontrol.properties
dir=/home/cruise-control/config
for i in 8;do
    id=slave-${i}
    scp ./$name $id:$dir
done