Help from https://www.youtube.com/watch?v=PJ95WY2DqXo

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
docker ps -a shows all recent containers

docker run -d --name=my_container ubuntu sleep 15:
creates a container that runs in the background

node -v checks node version

after ps -a
docker commit -a iamnawa 0358 ubuntu-node:0.1

-a is author, and then the 4 numbers are the first four numbers
of the container, you do not need to write the whole ID
Then name it, in this case I used the name ubuntu-node and 0.1
