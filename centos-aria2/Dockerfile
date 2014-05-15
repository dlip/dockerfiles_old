FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
RUN rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

RUN yum install -y aria2 && \
    yum clean all

VOLUME ["/data", "/config"]

ENV ARIA2_ARGS --enable-rpc --rpc-listen-all=true --continue --dir=/data --check-certificate=false --save-session=/config/aria2-session.txt --input-file=/config/aria2-session.txt

ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
