FROM mysql:8.0

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

# Define environment variables
ENV MYSQL_ROOT_PASSWORD=testblog1022
ENV MYSQL_DATABASE=blog
ENV MYSQL_USER=blog
ENV MYSQL_PASSWORD=testblog1022

# Use a volume to persist data
VOLUME /var/lib/mysql

