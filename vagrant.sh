#! /usr/bin/env bash

#  ubuntu update

sudo apt-get -y update
sudo apt-get -y upgrade
 

# Python 3.6 install
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get -y update
sudo apt-get -y install python3.6
sudo update-alternatives –-install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives –-install /usr/bin/python3 python3 /usr/bin/python3.6 2
echo "###  Please input 0 ###"
sudo update-alternatives -–config python3

 

## pip & virtualenv install
sudo apt-get install python3-pip
sudo pip install virtualenv

 

## Docker CE install
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
 

## loopchain docker images download
sudo docker pull loopchain/looprs
sudo docker pull loopchain/looppeer
sudo docker pull loopchain/loopchain-fluentd

