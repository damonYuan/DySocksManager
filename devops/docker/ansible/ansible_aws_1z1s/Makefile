CC=gcc

.PHONY: clean

all: dev

production_create:
	ansible-playbook -i ./inventories/production \
    	--private-key ./vault/shadowsocks.pem \
    	--vault-password-file .vault_pass.txt \
    	-v production_create.yml

production_init:
	ansible-playbook -i ./inventories/production \
    	--private-key ./vault/shadowsocks.pem \
    	--vault-password-file .vault_pass.txt \
    	-v production_init.yml

production_deploy:
	ansible-playbook -i ./inventories/production \
    	--private-key ./vault/shadowsocks.pem \
    	--vault-password-file .vault_pass.txt \
    	-v production_deploy.yml

clean:
	cd $(VDIR); vagrant halt; rm -rf ./*.retry
