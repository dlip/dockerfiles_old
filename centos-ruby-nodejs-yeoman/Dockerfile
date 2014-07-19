FROM       dlip/centos-ruby-nodejs
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN yum install -y sudo

# Add a yeoman user because grunt doesn't like being root
RUN adduser yeoman &&\
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers &&\
  npm install -g yo grunt

RUN npm install -g generator-webapp generator-angular generator-polymer

RUN gem install compass

ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman
# Expose the port
EXPOSE 9000
