java -cp ./lib/ext/pepper-box-1.0.jar  com.gslab.pepper.PepperBoxLoadGenerator --schema-file /root/schema --producer-config-file /root/properties  --throughput-per-producer 500 --test-duration 1 --num-producers 1000

bin/jmeter -n -t test.jmx -r -l test.jtl -e -o /root/apache-jmeter-3.0/resultReport