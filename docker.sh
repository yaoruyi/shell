#!/bin/sh
cd ~
echo -e "\033[32m update \033[0m"
yum -y update
echo -e "\033[32m remove old docker \033[0m"
yum -y remove docker  docker-common docker-selinux docker-engine
echo -e "\033[32m install docker lastet \033[0m"
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
echo -e "\033[32m mkdir \033[0m"
mkdir -p /data/docker
echo -e "\033[32m modify default path \033[0m"
sed 's/dockerd/dockerd --graph \/data\/docker/g' /usr/lib/systemd/system/docker.service
echo -e "\033[32m restart \033[0m"
systemctl daemon-reload
systemctl restart docker
echo -e "\033[32m finished! \033[0m"
