sysctl -w net.ipv4.ip_forward=1 && sysctl -w vm.max_map_count=262144 && sysctl -p
docker-compose build && docker-compose up -d
curl -XPUT 'http://10.0.29.111:9200/_template/template1' -d@/root/opt-kds-shipper/htdocs/Dockerfiles/elasticsearch/config/templates/template1.json
curl -XPUT 'http://10.0.29.111:9200/_template/template2' -d@/root/opt-kds-shipper/htdocs/Dockerfiles/elasticsearch/config/templates/template2.json
