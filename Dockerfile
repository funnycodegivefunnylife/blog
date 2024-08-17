FROM mysql:8.0


EXPOSE 3306

# Define environment variables
ENV MYSQL_ROOT_PASSWORD=testblog1022
ENV MYSQL_DATABASE=blog
ENV MYSQL_USER=blog
ENV MYSQL_PASSWORD=testblog1022

# Use a volume to persist data
VOLUME /var/lib/mysql

