FROM       dlip/centos-base-nodejs
MAINTAINER Dane Lipscombe <dane@lipscombe.com.au>

RUN git clone https://github.com/343max/put-io-sync.git && cd put-io-sync && \
  git checkout 0.2 && npm install

ADD config.js.mustache /put-io-sync/config.js.mustache

ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
