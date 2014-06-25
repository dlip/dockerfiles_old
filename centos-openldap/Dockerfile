FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v2014-06-25

RUN yum -y install openldap-servers openldap-clients && \
  yum clean all

ADD templates /etc/minga/openldapserver

ENV OPENLDAP_DEFAULT_OPT {\
  "basedn": "dc=localdomain",\
  "server": "ldap.localdomain",\
  "tls_enabled": true,\
  "tls_reqcert": "demand",\
  "pam_password": "md5",\
  "passwd_ou": "people",\
  "shadow_ou": "people",\
  "group_ou": "groups",\
  "automount_ou": "automount",\
  "rootpw":  null,\
  "dir":  "/etc/openldap",\
  "run_dir":  "/var/run/openldap",\
  "module_dir":  "/usr/lib64/openldap",\
  "preseed_dir":  "/var/cache/local/preseeding",\
  "tls_checkpeer":  false,\
  "pam_password":  "md5",\
  "manage_ssl":  true,\
  "ssl_dir":  "/etc/openldap/ssl",\
  "cafile":  null,\
  "ssl_cert":  "/etc/openldap/ssl/openldap_cert.pem",\
  "ssl_key":  "/etc/openldap/ssl/openldap.pem",\
  "slapd_type":  null\
}

RUN echo "bash -c \"minga /etc/minga/openldapserver /etc/minga/openldapserver /etc/openldap '\$OPENLDAP_DEFAULT_OPT' '\$OPENLDAP_OPT'\"" >> /usr/bin/container-config.sh

EXPOSE 389

ADD container-start.sh /usr/bin/container-start.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
