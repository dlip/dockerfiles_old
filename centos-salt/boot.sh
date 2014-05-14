#!/bin/bash
docker build -t dlip/centos-base-saltmaster .
docker run -i -t -v /home/dane/code/docker/data/saltmaster/etc:/etc/salt -v /home/dane/code/docker/data/saltmaster/srv:/srv/salt -p 4505:4505 -p 4506:4506 dlip/centos-base-saltmaster
