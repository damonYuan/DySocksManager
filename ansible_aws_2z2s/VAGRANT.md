README
===

# ShadowSocks Automation

  Inspired by 
  
  > https://github.com/tdi/vagrant-docker-swarm
  
  > https://botleg.com/stories/monitoring-docker-swarm-with-cadvisor-influxdb-and-grafana/

# Vagrant destroy all

  `$ $ for i in `vagrant global-status | grep virtualbox | awk '{ print $1 }'` ; do vagrant destroy $i ; done`
  
# Why not use Vagrant ansible provision?  

# Test speed in terminal

```
export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087; // based on your local proxy
curl ip.gs
curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
```

# Bastion ec2 with ssh forward
 
> https://medium.com/@dualspark/ssh-agent-forwarding-configuration-with-ansible-and-tower-713424951591

# ansible command to test hosts 

`ansible -i ./inventories/staging  -m ping 'tag_env_staging:&tag_type_nginx'`

# Test nginx configuration

`$ nginx -T`

# One manager with three workers in two AZ

Problem: only one manager, if it failed the cluster cannot restore
Solution: add more managers. but if multiple mangers in docker swarm cluster, it should be more than 2. And only the leader node can be used for deployment.
