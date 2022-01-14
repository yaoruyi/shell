#!/bin/sh
echo -e "\033[32m install pip \033[0m"
yum -y install python-pip
echo -e "\033[32m install gen-pac \033[0m"
pip install -U genpac
echo -e "\033[32m install docker-compose \033[0m"
curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo -e "\033[32m install docker-up \033[0m"
docker-compose up --build -d
