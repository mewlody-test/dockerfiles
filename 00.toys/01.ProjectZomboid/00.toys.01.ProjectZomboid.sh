#!/bin/bash

docker build -t mewlody/project-zomboid-server:$1 .
docker push mewlody/project-zomboid-server:$1 && docker push mewlody/project-zomboid-server
echo "done"
