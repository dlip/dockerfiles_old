FROM       dlip/centos-base
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v1.1.1-2014.05.12

RUN yum install -y java-1.7.0-openjdk && \
    yum clean all 

RUN mkdir -p /tmp/elasticsearch-build && cd /tmp/elasticsearch-build && \
  curl -OL https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz && \
  tar -zxf elasticsearch-1.1.1.tar.gz && mv elasticsearch-1.1.1 elasticsearch && \
  mv elasticsearch /usr/local/share && cd / && rm -rf /tmp/elasticsearch-build

VOLUME /usr/local/share/elasticsearch/data/elasticsearch
EXPOSE 9200

CMD ["/usr/local/share/elasticsearch/bin/elasticsearch"]
