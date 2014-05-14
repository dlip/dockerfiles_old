FROM       dlip/centos-base
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v2.1.1-2014-05-12

RUN yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel \
  libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool \
  bison iconv-devel && \
  yum clean all

RUN mkdir -p /tmp/ruby-build && cd /tmp/ruby-build && \
  curl -O http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz && \
  tar -zxf ruby-2.1.1.tar.gz && cd ruby-2.1.1 && \
  ./configure && make && make install && \
  cd / && rm -rf /tmp/ruby-build
