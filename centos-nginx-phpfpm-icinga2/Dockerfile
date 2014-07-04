FROM       dlip/centos-nginx-phpfpm
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN yum install -y --enablerepo=centosplus gcc-c++ cmake openssl-devel boost-devel bison flex mysql-devel python-devel\
    yum clean all

RUN cd tmp && git clone git://git.icinga.org/icinga2.git && cd icinga2 && git checkout v2.0.0 && \
    mkdir build && cd build && cmake .. && make && make install && cd /tmp && rm -rf icinga2

RUN groupadd icinga && groupadd icingacmd && useradd -c "icinga" -s /sbin/nologin -G icingacmd -g icinga icinga && \
    usermod -a -G icingacmd nginx

# icingaweb2
#RUN pear channel-discover zend.googlecode.com/svn && pear install zend/zend

#RUN cd tmp && git clone git://git.icinga.org/icingaweb2.git && cd icingaweb2 && \
    #./configure --with-web-user=nginx --with-web-group=nginx && make install

