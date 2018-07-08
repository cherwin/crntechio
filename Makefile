.PHONY: terraform ansible

terraform:
	cd terraform && terraform plan && sleep 5 && echo yes | terraform apply

ansible:
	ansible-playbook -i ansible/contrib/inventory.py ansible/site.yml
