for i in 5 6 7;do
    id=slave-8
    scp ./docker-compose.yml $id:/root/prometheus
    scp ./prometheus.yml $id:/root/prometheus
done