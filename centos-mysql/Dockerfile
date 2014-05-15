FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN yum install -y mysql-server && \
    yum clean all 

ENV MYSQL_DATABASE my_database
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD adminpass

VOLUME /var/lib/mysql

EXPOSE 3306
ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
