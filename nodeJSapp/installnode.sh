Inside installnode.sh, there should be these commands

Start a docker container with ubuntu:
docker run -t -i ubuntu:14.04 /bin/bash

Immediately following:
apt-get update
apt-get upgrade
apt-get install nano ORRRRR vim
apt-get install vim

apt-get update
apt-get install --yes nodejs
apt-get install --yes nodejs-legacy
apt-get install --yes npm

docker ps will show all running containers

docker run -d --name=my_container ubuntu sleep 15:
creates a container that runs in the background

node -v checks node version
