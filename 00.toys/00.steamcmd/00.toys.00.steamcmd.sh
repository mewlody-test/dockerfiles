#!/bin/bash

docker build -t mewlody/steamcmd .
docker push mewlody/steamcmd
echo "done"
