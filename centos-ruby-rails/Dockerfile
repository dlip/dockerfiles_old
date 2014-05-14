FROM       dlip/centos-ruby
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v4.1.0-2014-05-12

RUN yum install -y sqlite-devel mysql-devel postgresql-devel && \
    yum clean all

RUN mkdir -p /tmp/nodejs-build && cd /tmp/nodejs-build && \
  curl -O http://nodejs.org/dist/v0.10.28/node-v0.10.28.tar.gz && \
  tar -zxf node-v0.10.28.tar.gz && cd node-v0.10.28 && \
  ./configure && make && make install && \
  cd / && rm -rf /tmp/nodejs-build

RUN gem install bundler --no-ri --no-rdoc
RUN gem install rails -v 4.1.0 --no-ri --no-rdoc

