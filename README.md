# opt
Use docker web server with elk 

### Structure
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
├── jenkins
│   └── Dockerfile
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
├── go
│   ├── Dockerfile
│   └── app
│       ├── client_tcp
│       └── server
├── logstash
│   ├── Dockerfile
│   └── kds
│       ├── agent.conf
│       └── index.conf
├── nginx
│   ├── Dockerfile
│   └── nginx.conf

```

### Introduce
```
10.0.29.249:5000/jetty              | docker pull jetty:8.1.17   | 注：（https://github.com/pengqiuyuan/docker-jetty8.1.17-jdk8）
10.0.29.249:5000/mysql              | docker pull mysql:5.6
10.0.29.249:5000/redis              | docker pull redis:latest
10.0.29.249:5000/elasticsearch      | docker pull elasticsearch:2.2.1
10.0.29.249:5000/logstash           | docker pull logstash:2.3
10.0.29.249:5000/nginx              | docker pull nginx:1.9.0
10.0.29.249:5000/java               | docker pull java:8-jdk           
10.0.29.249:5000/golang             | docker pull golang:1.6   
10.0.29.249:5000/jayqqaa12/jenkins  | docker pull jayqqaa12/jenkins

```
### Installation docker (1.9.1)
```
$ sudo apt-get update
$ sudo apt-get install docker-engine
$ sudo service docker start
```
### Installation docker compose
```
$ pip install docker-compose
$ curl -L https://github.com/docker/compose/releases/download/1.5.2/run.sh > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
```
### Installation docker registry
```
$ docker pull registry
$ cd ~
$ git clone https://github.com/pengqiuyuan/opt-docker-registry.git
$ cd ~/opt-docker-registry/htdocs/Dockerfiles
$ docker-compose build && docker-compose up -d
```
![image](https://cloud.githubusercontent.com/assets/4953205/14697815/21b3711a-07ba-11e6-8940-3e931940b764.png)
