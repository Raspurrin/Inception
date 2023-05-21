FROM alpine:3.14

RUN apk add curl php7 php7-opcache php7-fpm php7-mysqli php7-json php-cli
RUN mkdir /usr/local/bin/wp
# RUN cd /usr/local/bin/wp
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
# RUN cd /

RUN mkdir -p /var/www/html


#     php7-fpm php7-mysqli php7-json php7-session \
#     php7-dom php7-curl php7-gd php7-ctype php7-opcache php7-zlib php7-xmlwriter \
#     php7-fileinfo php7-iconv php7-simplexml php7-tokenizer php7-xml php7-posix \
#     php7-mbstring php7-pecl-apcu php7-exif php7-imagick php7-zip \
#     php7-memcached php7-redis php7-pdo_mysql
RUN adduser --disabled-password --gecos '' --ingroup www-data www-data
RUN chown -R www-data:www-data /usr/local/bin/wp/wp-cli.phar
RUN chown -R www-data:www-data /usr/local/bin/
RUN chown -R www-data:www-data /var/www/html

RUN chmod 777 /usr/local/bin/wp/wp-cli.phar
RUN chmod 777 /usr/local/bin/wp/
RUN chmod 777 /var/log/php7/

COPY conf/php.ini /var/www/html
COPY conf/wp-config.php /var/www/html
RUN curl -L https://wordpress.org/latest.tar.gz | tar -xz -C /var/www/html
RUN chmod 777 /var/www/html/*
USER www-data
EXPOSE 3306
EXPOSE 9000
ENTRYPOINT ["/bin/sh", "-c", "/usr/sbin/php-fpm7 --nodaemonize"]