# Run Under Ubuntu

## 环境要求

- Docker
- Docker compose

## 修改配置
elasticsearch目录
```
~/opt/htdocs/Dockerfiles/elasticsearch/config/elasticsearch.yml 最后一行修改为宿主机地址
discovery.zen.ping.unicast.hosts: ["*.*.*.*"]
```
logstash目录
```
~/opt/htdocs/Dockerfiles/logstash/kds/agent.conf 修改1处为宿主机地址

    host => "*.*.*.*"
    
~/opt/htdocs/Dockerfiles/logstash/kds/index.conf 修改4处为宿主机地址

    host => "*.*.*.*"
    host => ["*.*.*.*"]
    host => ["*.*.*.*"]
    host => ["*.*.*.*"]
```
nginx目录
```
~/opt/htdocs/Dockerfiles/nginx/nginx.conf 修改2处为宿主机地址
    
    upstream game-ser{
       server *.*.*.*:8080;
    }
    location /port/{
      proxy_set_header    Host $http_host;
      proxy_set_header    X-Real-IP   $remote_addr;
      proxy_set_header    X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_redirect off;
      proxy_pass  http://*.*.*.*:9200/;
    }
```
bin目录
```
docker-compose build && docker-compose up -d
curl -XPUT 'http://10.0.29.111:9200/_template/template1' -d@/root/opt/htdocs/Dockerfiles/elasticsearch/config/templates/template1.json
curl -XPUT 'http://10.0.29.111:9200/_template/template2' -d@/root/opt/htdocs/Dockerfiles/elasticsearch/config/templates/template2.json
```
构建及运行环境

```
bin/start.sh
```
