README
===

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://circleci.com/gh/damonYuan/DySocksManager)
![license](https://img.shields.io/github/license/mashape/apistatus.svg)

[![GitHub stars](https://img.shields.io/github/stars/damonYuan/DySocksManager.svg?style=social&label=Stars)](https://github.com/damonYuan/DySocksManager/stargazers)
[![GitHub watchers](https://img.shields.io/github/watchers/damonYuan/DySocksManager.svg?style=social&label=Watch)](https://github.com/damonYuan/DySocksManager/watchers)
[![GitHub issues](https://img.shields.io/github/issues/damonYuan/DySocksManager.svg)](https://github.com/damonYuan/DySocksManager/issues)


This project is based on **[ShadowSocks-Manager](https://github.com/shadowsocks/shadowsocks-manager)**. 

Recently I have spent quite a lot time on trying setup the shadowsocks-manager in docker, here I want to save the time for other developers and you can build your own image based on this example.

Since the manager should manage only one specific shadowsocks instance, I am going to put them into the same container and using `supervisor` to ensure the process running inside the container for the purpose of deploying it into docker swarm mode, or the architecture of shadowsocks-manager along with docker swarm mesh route will make it quite difficult to ensure shadowsocks-manager control the specific shadowsocks-libev instance. Here is the introduction from docker's website.

> https://docs.docker.com/config/containers/multi-service_container/

If you have any methods to deploy shadowsocks-manager in cluster using Kubernets, please let me know, my github is [damonYuam](https://github.com/damonYuan), and my email address is *damon.yuan.dev@gmail.com*.

Thanks

## Docker compose mode

1. Install docker

   You can use this [script](https://get.docker.com/) to get the autoated installation script.

2. Install docker compose

   > https://docs.docker.com/compose/install/

3. Edit the env file

   Change the .env.example to .env file and edit it based on your requirements. 

3. Run command

   ```
   $ docker-compose build && docker-compose up

   ```

## Docker swarm mode

Since the docker compose file version 3 do not support build command, I refer the image to the one I built on dockerhub, but you can build your own version based on sssocksmgr folder.

In order to run the docker stack after image is built and uploaded to registry correctly:

1. Start swarm mode

   `$ docker swarm init`
   
   You can `join` more host machines after the swarm created. 
   
2. Deploy to swarm
   
   `$ export $(cat .env) && docker stack deploy --compose-file docker-stack.yml ss`
   
3. Result with visualizer
   
   ![docker swarm mode](https://raw.githubusercontent.com/damonYuan/DySocksManager/master/wiki_images/docker-swarm-mode.png)
   
## Note about using mysql for shadowsocks-manager
   
   DO NOT using MySQL single table for shadowsocks-managers because it will cause synchronization problems (the online/offline indicator for each server will have bugs). If you have to use MySQL, using one table for each manager. The simplest way is to use sqlite for shadowsocks-manager. 
   
## Ansible automation

In folder ansible_aws_1z1s, the topology is just one VPC with 1 A-zone and 1 public subnet.

In folder ansible_aws_2z2s, the topology is one VPC with 2 A-zones and 2 subnets, one public and one private.
