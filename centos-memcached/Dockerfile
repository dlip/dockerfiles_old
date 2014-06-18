FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v1.4.4

RUN yum -y install memcached-1.4.4 && \
  yum clean all

ADD templates /etc/minga/memcached

ENV MEMCACHED_DEFAULT_OPT {\
"user":  "memcached",\
"memory":  "64",\
"port" : "11211",\
"udp_port":  "11211",\
"listen":  "0.0.0.0",\
"maxconn":  "1024",\
}

RUN echo "bash -c \"minga /etc/minga/memcached /etc/minga/memcached /usr/bin '\$MEMCACHED_DEFAULT_OPT' '\$MEMCACHED_OPT'\"" >> /usr/bin/container-config.sh

EXPOSE 11211/tcp 11211/udp

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
