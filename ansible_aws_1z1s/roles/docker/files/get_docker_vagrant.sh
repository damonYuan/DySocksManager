#!/bin/sh
export DEBIAN_FRONTEND=noninteractive

apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 \ --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
apt-get update
# sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y
apt-get install docker-engine --force-yes -y
usermod -aG docker vagrant
service docker start
docker version