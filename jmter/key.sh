for i in 1 2 3 4;do
    id=slave-${i}
    scp ~/jmeter $id:/root/apache-jmeter-3.0/bin/
done