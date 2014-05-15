FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum -y install nginx && \
  yum clean all

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/nginx-templates", "/data", "/etc/nginx/sites-enabled", "/var/log/nginx"]

ADD start.sh /start.sh

EXPOSE 80
EXPOSE 443

CMD ["/bin/bash", "/start.sh"]
