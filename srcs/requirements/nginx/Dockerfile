FROM alpine:3.16
RUN apk add --no-cache mysql-client nginx
COPY conf/nginx.conf /etc/nginx/sites-available/default
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]