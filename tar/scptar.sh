for i in 5 6 7 8;do
    id=slave-${i}
    rsync -avz --progress ./*.tar id:/root
    
done