FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN yum install -y mysql-server && \
    yum clean all 

ENV MYSQL_DATABASE data
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD adminpass

EXPOSE 3306
ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
