FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v0.9.9.7.429-2014.05.14

RUN rpm -Uvh http://downloads.plexapp.com/plex-media-server/0.9.9.7.429-f80a8d6/plexmediaserver-0.9.9.7.429-f80a8d6.x86_64.rpm; echo 'avoiding error'

VOLUME ["/config", "/data"]

ADD PlexMediaServer /etc/sysconfig/PlexMediaServer
ADD start.sh /start.sh

EXPOSE 32400

CMD ["/bin/bash", "/start.sh"]
