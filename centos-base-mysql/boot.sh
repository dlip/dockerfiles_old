#!/bin/bash
docker build -t dlip/centos-base-mysql . &&  docker run -i -t dlip/centos-base-mysql bash
