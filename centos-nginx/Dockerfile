FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v1.6.0-2014.05.17

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum -y install nginx-1.6.0 && \
  yum clean all

ADD templates /etc/minga/nginx

ENV NGINX_DEFAULT_OPT {\
"user":  "nginx",\
"sendfile" : "on",\
"gzip":  "on",\
"gzip_static":  "off",\
"gzip_http_version":  "1.0",\
"gzip_comp_level":  "2",\
"gzip_proxied":  "any",\
"gzip_vary":  "off",\
"gzip_buffers": null,\
"gzip_min_length":  "1000",\
"gzip_disable":  "MSIE [1-6]\\.",\
"gzip_types": [\
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
}

VOLUME ["/nginx-templates", "/data", "/var/log/nginx"]

RUN echo "bash -c \"minga /etc/minga/nginx /etc/minga/nginx /etc/nginx '\$NGINX_DEFAULT_OPT' '\$NGINX_OPT'\"" >> /usr/bin/container-config.sh && \ 
    echo "exec nginx" >> /usr/bin/container-start.sh

EXPOSE 80
EXPOSE 443

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
