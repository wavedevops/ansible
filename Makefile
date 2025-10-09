.PHONY: all ansible terraform

all:
	git pull

ansible:
	git pull
	ansible-playbook -i all, playbook.yml

terraform:
	git pull
	terraform init
	terraform apply -auto-approve
