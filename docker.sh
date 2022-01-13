#!/bin/sh
cd ~
echo "update"
yum -y update
echo "remove old docker"
yum remove docker  docker-common docker-selinux docker-engine
echo "install docker lastet"
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
echo "mkdir"
mkdir -p /data/docker
echo "modify default path"
sed 's/dockerd/dockerd --graph \/data\/docker/g' /usr/lib/systemd/system/docker.service
echo "restart"
systemctl daemon-reload
systemctl restart docker
echo "finished!"
