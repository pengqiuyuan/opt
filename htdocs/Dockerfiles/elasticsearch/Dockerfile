FROM 10.0.29.249:5000/elasticsearch
RUN usermod -u 1000 elasticsearch;
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
EXPOSE 9200 9300

