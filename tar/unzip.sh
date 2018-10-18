for i in 5 6 7 8;do
    id=slave-${i}
    for element in `ls java`
    do  
        ssh ${id} "tar -xvf $element"
    done
done