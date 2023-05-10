FROM alpine:3.16
RUN apk update
RUN apk add bash nginx
EXPOSE 80/tcp
COPY conf/nginx.conf /etc/nginx/sites-available/default
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

# FROM ubuntu
# RUN apt-get update
# RUN apt-get install nginx -y
# COPY tools/index.html /var/www/html/
# EXPOSE 80
# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]