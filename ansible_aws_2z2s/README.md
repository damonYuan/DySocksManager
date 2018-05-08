README
====

1. The network topology is 2 zones 2 subnets (one public and one private), there are one instance in each zone's public subnet as nginx reverse proxy and all the traffic goes through the proxy to private subnets. All the services are deployed into private subnets, either as docker swarm services or docker compose containers.

2. Issue: Invoking playbooks using the dynamic inventory AWS script fails from time to time - No closing quotation

> https://github.com/ansible/ansible/issues/14667

3. We cannot deploy ShadowSocks as service because the ssmgr cannot which host to access.

