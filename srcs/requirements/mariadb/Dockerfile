FROM alpine:3.14
RUN apk update && apk add mariadb mariadb-client
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld
COPY conf/mariadb.conf /etc/mysql/mariadb.conf
RUN touch /var/run/mysqld/mysqld.sock
RUN chown -R mysql:mysql /var/run/mysqld/mysqld.sock
RUN mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

EXPOSE 3306
CMD ["mysqld", "--user=mysql"]
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD MYSQL_DATABASE=$MYSQL_DATABASE MYSQL_USER=$MYSQL_USER MYSQL_PASSWORD=$MYSQL_PASSWORD
