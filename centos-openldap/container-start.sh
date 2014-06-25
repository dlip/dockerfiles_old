#!/bin/sh

rm -rf /etc/openldap/slapd.d/*
slapadd -l /etc/openldap/root.ldif
slaptest -f /etc/openldap/slapd.conf -F /etc/openldap/slapd.d
chown -R ldap:ldap /var/lib/ldap
chown -R ldap:ldap /etc/openldap/slapd.d

exec slapd -h 'ldap:/// ldapi:///' -g ldap -u ldap -d stats
