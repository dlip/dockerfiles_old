#!/bin/bash
for dir in $(find ./* -maxdepth 1 -type d | sed 's/\.\///') ; do
  echo "Pushing $dir."
  docker push dlip/$dir
  if [ $? -ne 0 ]; then
    echo "Push fail."
    exit 1
  fi
done
