FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au> v2014-06-25

RUN yum -y install openldap-servers openldap-clients && \
  yum clean all

ADD templates /etc/minga/openldapserver
ADD ssl/slapd.pem /etc/pki/tls/certs/slapd.pem
ADD DB_CONFIG /var/lib/ldap/DB_CONFIG

ENV OPENLDAPSERVER_DEFAULT_OPT {\
  "basedn": "dc=mytest,dc=com",\
  "dc": "mytest",\
  "server": "ldap.localdomain",\
  "tls_enabled": true,\
  "tls_reqcert": "demand",\
  "pam_password": "md5",\
  "passwd_ou": "people",\
  "shadow_ou": "people",\
  "group_ou": "groups",\
  "automount_ou": "automount",\
  "rootpw":  "{SSHA}JsQsreYtvN688A/9w3yxIr8XXZ2Ezmm8",\
  "dir":  "/etc/openldap",\
  "run_dir":  "/var/run/openldap",\
  "module_dir":  "/usr/lib64/openldap",\
  "preseed_dir":  "/var/cache/local/preseeding",\
  "tls_checkpeer":  false,\
  "pam_password":  "md5",\
  "manage_ssl":  true,\
  "ssl_dir":  "/etc/openldap/ssl",\
  "cafile":  "/etc/pki/tls/certs/ca-bundle.crt",\
  "ssl_cert":  "/etc/pki/tls/certs/slapd.pem",\
  "ssl_key":  "/etc/pki/tls/certs/slapd.pem",\
  "slapd_type":  null\
}

ENV OPENLDAP_DEFAULT_OPT {\
  "basedn": "dc=mytest,dc=com",\
  "server": "localhost",\
  "tls_enabled": true,\
  "tls_reqcert": "never",\
  "pam_password": "md5",\
  "passwd_ou": "people",\
  "shadow_ou": "people",\
  "group_ou": "groups",\
  "automount_ou": "automount"\
}

RUN echo "bash -c \"minga /etc/minga/openldapserver /etc/minga/openldapserver /etc/openldap '\$OPENLDAPSERVER_DEFAULT_OPT' '\$OPENLDAPSERVER_OPT'\"" >> /usr/bin/container-config.sh

EXPOSE 389

ADD container-start.sh /usr/bin/container-start.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
