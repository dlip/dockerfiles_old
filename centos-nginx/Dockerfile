FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum -y install nginx python-jinja2 && \
  yum clean all

ENV NGINX_ENV development

ADD nginx.conf.jinja2 /etc/nginx/nginx.conf.jinja2
ADD jinja2 /usr/bin/jinja2

VOLUME ["/nginx-templates", "/data", "/var/log/nginx"]

ADD start.sh /start.sh

EXPOSE 80
EXPOSE 443

CMD ["/bin/bash", "/start.sh"]
