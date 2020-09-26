create_vms: Vagrantfile
	vagrant up


.PHONY: validate
validate: Vagrantfile
	vagrant validate