for i in 5 6 7 8;do
    id=slave-${i}
    rsync -avz --progress ./tar/* id:/root
    rsync -avz --progress ./java/jdk-8u191-linux-x64.tar $id:/root
done