
if [ ! -f ~/opt/htdocs/Dockerfiles/logstash/logstash-1.5.4.tar.gz ]; then
	echo "logstash-1.5.4.tar.gz no exists!"
	wget https://download.elasticsearch.org/logstash/logstash/logstash-1.5.4.tar.gz -O ~/opt/htdocs/Dockerfiles/logstash/logstash-1.5.4.tar.gz
fi
if [ ! -d ~/opt/htdocs/Dockerfiles/logstash/logstash-1.5.4 ]; then
	echo "logstash-1.5.4 not exist!"
	tar -xvf ~/opt/htdocs/Dockerfiles/logstash/logstash-1.5.4.tar.gz -C ~/opt/htdocs/Dockerfiles/logstash 
fi
if [ -f ~/opt/htdocs/Dockerfiles/logstash/kds/agent.conf ]; then
	nohup  ~/opt/htdocs/Dockerfiles/logstash/logstash-1.5.4/bin/logstash agent -f ~/opt/htdocs/Dockerfiles/logstash/kds/agent.conf > ~/opt/htdocs/Dockerfiles/bin/log/kds.out &
fi
