FROM alpine:3.14
RUN apk update && apk add mariadb mariadb-client
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld
COPY conf/mariadb.conf /etc/mysql/mariadb.conf
COPY tools/init.sql /docker-entrypoint-initdb.d/
COPY tools/default_to_env.sh /docker-entrypoint-initdb.d/
RUN chmod 777 /docker-entrypoint-initdb.d/default_to_env.sh
RUN chmod 777 /docker-entrypoint-initdb.d/init.sql
RUN touch /var/run/mysqld/mysqld.sock
RUN chown -R mysql:mysql /var/run/mysqld/mysqld.sock
RUN mariadb-install-db --basedir=/usr --datadir=/var/lib/mysql

EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--init-file=/docker-entrypoint-initdb.d/init.sql"]