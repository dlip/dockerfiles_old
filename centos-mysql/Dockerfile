FROM       dlip/centos
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN yum install -y mysql-server && \
    yum clean all 

ENV MYSQL_DEFAULT_OPT {\
  "root_password": "ilikerandompasswords",\
  "users": {\
    "user": "userpass" \
  },\
  "databases": {\
    "data": {\
      "users": [\
        "user"\
      ],\
      "import_file": false\
    }\
  }\
}

ADD templates /etc/minga

RUN echo "bash -c \"minga /etc/minga/mysql-scripts /etc/minga/mysql-scripts /usr/bin '\$MYSQL_DEFAULT_OPT' '\$MYSQL_OPT'\"" >> /usr/bin/container-config.sh

ADD container-start.sh /usr/bin/container-start.sh

CMD ["/bin/bash", "/usr/bin/container-boot.sh"]
