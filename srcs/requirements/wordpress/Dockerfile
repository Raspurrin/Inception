FROM alpine:3.14

RUN apk add curl php7-fpm php7-mysqli php7-json php7-session \
    php7-dom php7-curl php7-gd php7-ctype php7-opcache php7-zlib php7-xmlwriter \
    php7-fileinfo php7-iconv php7-simplexml php7-tokenizer php7-xml php7-posix \
    php7-mbstring php7-pecl-apcu php7-exif php7-imagick php7-zip \
    php7-memcached php7-redis php7-pdo_mysql
RUN mkdir -p /var/www/html
RUN adduser --disabled-password --gecos '' --ingroup www-data www-data
RUN chown -R www-data:www-data /var/www/html
COPY conf/php.ini /var/www/html
COPY conf/wp-config.php /var/www/html
RUN curl -L https://wordpress.org/latest.tar.gz | tar -xz -C /var/www/html
EXPOSE 3306
EXPOSE 9000
