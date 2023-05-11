FROM alpine:3.16
RUN apk update
RUN apk add bash nginx
RUN apk add openssl --no-cache
RUN openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365
EXPOSE 443/tcp
COPY conf/nginx.conf /etc/nginx/sites-available/default
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

# FROM ubuntu
# RUN apt-get update
# RUN apt-get install nginx -y
# COPY tools/index.html /var/www/html/
# EXPOSE 80
# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]