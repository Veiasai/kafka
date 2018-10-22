for i in 1 2 3 4;do
    id=slave-${i}
    scp ~/test.jmx $id:/home/apache-jmeter-3.0/
    scp ~/JSR223\ Sampler.jmx $id:/home/apache-jmeter-3.0/
done