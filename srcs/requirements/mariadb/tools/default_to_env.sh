sed -i 's/username/$MYSQL_USER/g' /docker-entrypoint-initdb.d/init.sql
sed -i 's/rootname/$MYSQL_ROOT_USER/g' /docker-entrypoint-initdb.d/init.sql
sed -i 's/user_password/$MYSQL_PASSWORD/g' /docker-entrypoint-initdb.d/init.sql
sed -i 's/root_password/$MYSQL_ROOT_PASSWORD/g' /docker-entrypoint-initdb.d/init.sql

