FROM       centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v6.5 updated 2014.06.25

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum update -y && \
    yum install -y tar which git vim-minimal python-jinja2 && \
    yum clean all

RUN curl https://raw.githubusercontent.com/dlip/minga/v0.1.0/minga.py > /usr/bin/minga && chmod +x /usr/bin/minga

ADD scripts/ /usr/bin

ADD templates/ /etc/minga

ENV OPENLDAP_DEFAULT_OPT {\
  "basedn": "dc=localdomain",\
  "server": "ldap.localdomain",\
  "tls_enabled": true,\
  "tls_reqcert": "demand",\
  "pam_password": "md5",\
  "passwd_ou": "people",\
  "shadow_ou": "people",\
  "group_ou": "groups",\
  "automount_ou": "automount"\
}

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
