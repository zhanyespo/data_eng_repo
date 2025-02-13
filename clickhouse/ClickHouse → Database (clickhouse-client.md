ClickHouse → Database (clickhouse-client or Grafana).
Grafana → Monitoring UI at http://localhost:3000.
Prometheus → Metrics at http://localhost:9090.
MinIO → Object storage at http://localhost:9001.

docker ps -a --format "{{.ID}} {{.Names}}" | grep prometheus | awk '{print $1}' | xargs docker rm -f

docker logs prometheus --tail 50

docker-compose up -d prometheus

docker-compose stop prometheus

head -n 5 ./config_files/prometheus/prometheus.yaml

docker exec clickhouse -it bash


