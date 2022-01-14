#!/bin/sh
cd ~
echo -e "\033[32m install pip \033[0m"
yum -y install python-pip
echo -e "\033[32m install gen-pac \033[0m"
pip install -U genpac
