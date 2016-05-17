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

NEXT MAKE SURE NODE AND EXPRESS ARE INSTALLED
sudo npm install -g express-generator

AFTER installing express microservice,
npm i
npm start

Then pwd to locate microservice
docker run -it -v /Users/paul/desktop/dockerprac/my_microservice:/host -p 9000:3000 ubuntu-node:0.1 /bin/bash
i and t are put together... -v is volumes, then directory... -p for port 9000 to 3000 NAME:ubuntu-node /bin/bash

cp -r /host /microservice
copies host into a folder called microservice
NOW microservice is running in a docker container

RUNS in background
docker run -d -w /microservice -p 9000:3000 node-microservice:0.1 npm start
