FROM       centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v6.5-2014.05.12

RUN yum update -y && \
    yum install -y tar which git vim-minimal && \
    yum clean all

RUN git clone https://github.com/rcrowley/mustache.sh.git && \
    cd mustache.sh && make install && cd .. && rm -rf mustache.sh

