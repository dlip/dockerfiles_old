#!/bin/sh

chown mysql:mysql -R /var/lib/mysql
sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/my.cnf

chmod u+x /usr/bin/mysql-setup.sh
/usr/bin/mysql-setup.sh

#rm /usr/bin/mysql-setup.sh

exec mysqld_safe
