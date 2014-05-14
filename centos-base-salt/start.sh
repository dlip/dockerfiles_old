#!/bin/bash
if [ ! "$(ls -A /etc/salt)" ]; then
  echo "Copying default salt config to volume"
  cp -r /etc/salt.orig/* /etc/salt
fi

salt-master -d
bash
