.PHONY: terraform ansible

terraform:
	cd terraform && terraform plan && echo yes | terraform apply

ansible:
	ansible-playbook -i ansible/contrib/inventory.py ansible/site.yml
