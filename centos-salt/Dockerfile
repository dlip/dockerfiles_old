FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v2014.1.4-0.0.1

#RUN yum install -y python-pip yum-utils && yum clean all
#RUN pip install salt

RUN curl -L https://raw.githubusercontent.com/saltstack/salt-bootstrap/stable/bootstrap-salt.sh | sh -s -- git v2014.1.4


#RUN cp -r /etc/salt /etc/salt.orig

EXPOSE 4505
EXPOSE 4506

VOLUME ["/etc/salt", "/srv/salt"]

ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
