# opt
Use docker web server with elk 

### structure
```
~/opt/htdocs/Dockerfiles
├── README.md
├── bin
│   ├── kds.in.sh 
│   └── log
├── docker-compose.yml
├── jetty
│   ├── Dockerfile
│   └── webapps
│       ├── spdy.war
│       ├── test.war
│       └── *.war
├── mysql
│   ├── Dockerfile
│   └── *.sql
├── redis
│   └── Dockerfile
├── elasticsearch
│   ├── Dockerfile
│   └── bin
│       └── elasticsearch.in.sh
│   └── config
│       ├── elasticsearch.yml
│       ├── logging.yml
│       └── templates
│           ├── template1.json
│           └── template2.json
├── logstash
│   ├── Dockerfile
│   └── kds
│       ├── agent.conf
│       └── index.conf
├── nginx
│   ├── Dockerfile
│   └── nginx.conf

```

### introduce
```
10.0.29.249:5000/jetty           | docker pull jetty:8.1.17   | 注：（https://github.com/pengqiuyuan/docker-jetty8.1.17-jdk8）
10.0.29.249:5000/mysql           | docker pull mysql:5.6
10.0.29.249:5000/redis           | docker pull redis:latest
10.0.29.249:5000/elasticsearch   | docker pull elasticsearch:1.7.3
10.0.29.249:5000/logstash        | docker pull logstash:1.5.4
10.0.29.249:5000/nginx           | docker pull nginx:1.9.0
10.0.29.249:5000/java            | docker pull java:8-jdk               

```
