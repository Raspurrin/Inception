CREATE DATABASE IF NOT EXISTS my_database;
USE my_database;
CREATE USER 'username'@'%' IDENTIFIED BY 'user_password';
GRANT ALL PRIVILEGES ON my_database.* TO 'username'@'%';
CREATE USER 'rootname'@'%' IDENTIFIED BY 'root_password';
GRANT ALL PRIVILEGES ON my_database.* TO 'rootname'@'%';

