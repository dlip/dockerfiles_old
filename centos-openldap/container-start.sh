#!/bin/sh

rm -rf /etc/openldap/slapd.d/*
slapadd -l /etc/openldap/root.ldif
slaptest -f /etc/openldap/slapd.conf -F /etc/openldap/slapd.d

#SSL
cd /etc/pki/tls/certs
chmod 640 slapd.pem
chown :ldap slapd.pem
mkdir -p /etc/openldap/cacerts
ln -s /etc/pki/tls/certs/slapd.pem /etc/openldap/cacerts/slapd.pem

chown -R ldap:ldap /var/lib/ldap
chown -R ldap:ldap /etc/openldap/slapd.d

rm -rf /etc/openldap/slapd.d/*
slaptest -f /etc/openldap/slapd.conf -F /etc/openldap/slapd.d
chown -R ldap:ldap /etc/openldap/slapd.d

exec slapd -h 'ldap:/// ldapi:/// ldaps:///' -g ldap -u ldap -d stats
#ldapsearch -x -D "cn=admin,dc=mytest,dc=com" -w arstarst -s sub "objectclass=*"
#ldapadd -x -D "cn=admin,dc=mytest,dc=com" -w arstarst -f test.ldif 
