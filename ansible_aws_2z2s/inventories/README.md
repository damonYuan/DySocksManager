README
====

1. check the hosts in aws

`python ec2.py --list`

or

`ansible -i ./inventories/staging --list-hosts "tag_type_nginx"`

2. ping hosts

`ansible -i ./inventories/staging -m ping "tag_type_nginx"`

3. bastion with aws dynamic hosts

`https://tech.ga.gov.au/dynamic-inventory-ansible-behind-a-jumpbox-bastion-5c04a3e4b354`