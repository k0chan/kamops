

prepare:
	bash install-ansible.sh
	ansible-playbook prepare-env.yml -K -b

create_vms: Vagrantfile
	vagrant up


.PHONY: validate
validate: Vagrantfile
	vagrant validate