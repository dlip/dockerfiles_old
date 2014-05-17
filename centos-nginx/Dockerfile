FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v1.6.0-2014.05.17

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum -y install nginx-1.6.0 python-jinja2 && \
  yum clean all

ADD templates /etc/minga/nginx
RUN curl https://raw.githubusercontent.com/dlip/minga/master/minga.py > /usr/bin/minga && chmod +x /usr/bin/minga

ENV NGINX_ENV development

ENV NGINX_DEFAULT_OPT {\
  "user":  "nginx",\
  "gzip": {\
    "enabled":  "on",\
    "static":  "off",\
    "http_version":  "1.0",\
    "comp_level":  "2",\
    "proxied":  "any",\
    "vary":  "off",\
    "buffers": null,\
    "min_length":  "1000",\
    "disable":  "MSIE [1-6]\\.",\
    "types": [\
      "text/plain",\
      "text/css",\
      "application/x-javascript",\
      "text/xml",\
      "application/xml",\
      "application/rss+xml",\
      "application/atom+xml",\
      "text/javascript",\
      "application/javascript",\
      "application/json",\
      "text/mathml"\
    ] \
  },\

  "sendfile" : "off"\
 }

VOLUME ["/nginx-templates", "/data", "/var/log/nginx"]

ADD start.sh /start.sh

EXPOSE 80
EXPOSE 443

CMD ["/bin/bash", "/start.sh"]
