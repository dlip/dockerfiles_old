FROM       dlip/centos-nginx
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v5.5.12-2014.5.15

## Remi Dependency on CentOS 6 and Red Hat (RHEL) 6 ##
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
 
## CentOS 6 and Red Hat (RHEL) 6 ##
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

RUN yum --enablerepo=remi,remi-php55 install nginx -y php-fpm php-common \
    php-pecl-apc php-cli php-pear php-pdo php-mysqlnd php-pgsql php-pecl-mongo php-sqlite php-pecl-memcache php-pecl-memcached php-gd php-mbstring php-mcrypt php-xml && \
    yum clean all

ADD site /etc/nginx/conf.d/default.conf

ADD index.php /app/public/index.php

ADD start-phpfpm.sh /start-phpfpm.sh

CMD ["/bin/bash", "/start-phpfpm.sh"]
