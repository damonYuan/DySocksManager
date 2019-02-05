CC=gcc

.PHONY: clean

all: dev

development:
	ansible-playbook -i ./inventories/development \
        --private-key=~/.vagrant.d/insecure_private_key \
        --vault-password-file .vault_pass.txt \
        -v development.yml

development_destroy:
	ansible-playbook -i ./inventories/development \
        --private-key=~/.vagrant.d/insecure_private_key \
        --vault-password-file .vault_pass.txt \
        -v development_destroy.yml

staging_create:
	ansible-playbook -i ./inventories/staging \
    	--private-key ./vault/shadowsocks.pem \
    	--vault-password-file .vault_pass.txt \
    	-v staging_create.yml

staging_init:
	ansible-playbook -i ./inventories/staging \
    	--private-key ./vault/shadowsocks.pem \
    	--vault-password-file .vault_pass.txt \
    	-v staging_init.yml

staging_deploy:
	ansible-playbook -i ./inventories/staging \
    	--private-key ./vault/shadowsocks.pem \
    	--vault-password-file .vault_pass.txt \
    	-v staging_deploy.yml

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
