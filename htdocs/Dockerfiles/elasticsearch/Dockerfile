FROM 10.0.29.249:5000/elasticsearch:2.2.1
#RUN usermod -u 1000 elasticsearch;
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
ADD elasticsearch.conf /etc/security/limits.conf
EXPOSE 9200 9300

