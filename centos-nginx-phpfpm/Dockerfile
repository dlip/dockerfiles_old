FROM       dlip/centos-nginx
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v5.5.12-2014.5.15

RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

RUN yum --enablerepo=remi,remi-php55 install nginx -y php-fpm php-common \
    php-pecl-apc php-cli php-pear php-pdo php-mysqlnd php-pgsql php-pecl-mongo php-ldap \
    php-sqlite php-pecl-memcache php-pecl-memcached php-gd php-mbstring php-mcrypt php-xml && \
    yum clean all

ADD site /etc/nginx/conf.d/default.conf

ADD index.php /app/public/index.php

ADD container-start.sh /usr/bin/container-start.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
