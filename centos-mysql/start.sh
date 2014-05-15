#!/bin/sh
chown mysql:mysql -R /var/lib/mysql
sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/my.cnf

service mysqld start

if [[ ! -d /var/lib/mysql/$MYSQL_DATABASE ]] ; then
  echo "GRANT ALL ON *.* TO $MYSQL_USER@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
  echo "GRANT ALL ON *.* TO $MYSQL_USER@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
  echo "CREATE DATABASE $MYSQL_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci" | mysql

  if [ -n "$MYSQL_IMPORT_FILE" ]; then
    echo "Importing $MYSQL_IMPORT_FILE"
    mysql $MYSQL_DATABASE < $MYSQL_IMPORT_FILE
  fi
fi

tail -f /var/log/mysqld.log
