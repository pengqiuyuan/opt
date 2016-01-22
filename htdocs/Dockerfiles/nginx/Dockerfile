FROM 10.0.29.249:5000/nginx

RUN  mkdir /etc/nginx/logs
RUN  chown -R www-data.www-data /etc/nginx/logs
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
EXPOSE 80

