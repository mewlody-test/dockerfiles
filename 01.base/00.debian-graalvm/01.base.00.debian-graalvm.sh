#!/bin/bash

docker build -t mewlody/debian-graalvm .
docker push mewlody/debian-graalvm
echo "done"
