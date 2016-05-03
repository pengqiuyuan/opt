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
 docker run -d -p 8888:8888 -p 8889:8889 --name gomiddle_golang --link dockerfiles_mysql_1:dockerfiles_mysql_1 --restart=always \
  -v ~/opt/jenkins/mnt/jenkins_home/workspace/$JOB_NAME:/usr/src/gomiddle \
  -v ~/opt/jenkins/mnt/gopath:/usr/src/gopath \
  -w /usr/src/gomiddle -e "GOPATH=/usr/src/gopath" -e "CGO_ENABLED=0" -e "GOOS=linux" \
  10.0.29.249:5000/golang:1.5.2-alpine  env GOOS=linux GOARM=amd64 go run server.go 