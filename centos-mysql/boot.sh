#!/bin/bash
docker build -t dlip/centos-mysql . &&  docker run -i -t dlip/centos-mysql bash
