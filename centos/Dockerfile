FROM       centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v6.5-2014.05.19

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
