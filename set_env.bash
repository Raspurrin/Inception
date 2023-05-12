#!/bin/bash 

echo What do you want your username to be?
read username
echo Please enter a password:
read password
echo What do you want your root user to be? 
read root_username
echo Please enter a password:
read root_password

touch srcs/.env

echo "MYSQL_ROOT_USER=$username" >> srcs/.env
echo "MYSQL_ROOT_PASSWORD=$root_password" >> srcs/.env
echo "MYSQL_USER=$username" >> srcs/.env
echo "MYSQL_PASSWORD=$password" >> srcs/.env

echo "WORDPRESS_URL=mialbert.42.fr" >> srcs/.env
echo "WORDPRESS_TITLE=yo" >> srcs/.env
echo "WORDPRESS_DB_NAME=$username" >> srcs/.env
echo "WORDPRESS_DB_USER=$username" >> srcs/.env
echo "WORDPRESS_DB_PASSWORD=$password" >> srcs/.env
echo "WORDPRESS_DB_NAME=$username" >> srcs/.env
echo "WORDPRESS_DB_HOST=mariadb" >> srcs/.env