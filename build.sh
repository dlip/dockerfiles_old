#!/bin/bash
for dir in $(find ./* -maxdepth 1 -type d | sed 's/\.\///') ; do
  echo "Building $dir."
  docker build -t dlip/$dir $dir
  if [ $? -ne 0 ]; then
    echo "Build fail."
    exit 1
  fi
done
