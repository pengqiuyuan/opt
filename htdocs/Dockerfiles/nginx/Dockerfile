FROM nginx:1.9.0

RUN  mkdir /etc/nginx/logs
RUN  chown -R www-data.www-data /etc/nginx/logs
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
EXPOSE 80

