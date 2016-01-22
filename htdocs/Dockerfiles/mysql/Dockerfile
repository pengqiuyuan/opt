FROM 10.0.29.249:5000/mysql

# Write Permission
RUN usermod -u 1000 mysql && chown mysql.mysql /var/run/mysqld/ 
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
EXPOSE 3306

