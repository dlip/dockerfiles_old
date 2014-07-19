FROM       dlip/centos-ruby
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN yum install -y gcc-c++ && \
    yum clean all

ENV DOCKER_NODEJS_BASE_URL http://nodejs.org/dist/v0.10.28
ENV DOCKER_NODEJS_VERSION 0.10.28
ENV DOCKER_NODEJS_BUILD_DIR /tmp/nodejs-build

RUN mkdir -p $DOCKER_NODEJS_BUILD_DIR && cd $DOCKER_NODEJS_BUILD_DIR && \
  curl -O $DOCKER_NODEJS_BASE_URL/node-v$DOCKER_NODEJS_VERSION.tar.gz && \
  tar -zxf node-v$DOCKER_NODEJS_VERSION.tar.gz && cd node-v$DOCKER_NODEJS_VERSION && \
  ./configure && make && make install && \
  cd / && rm -rf $DOCKER_NODEJS_BUILD_DIR
