FROM elasticsearch:1.7.3
RUN usermod -u 1000 elasticsearch;
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
EXPOSE 9200 9300

