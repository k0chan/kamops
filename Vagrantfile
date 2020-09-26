VAGRANT_VERSIONFILE_API=2

Vagrant.configure(VAGRANT_VERSIONFILE_API) do |config|
    config.vm.box = "debian/buster64"
    config.vm.box_version = "10.4.0"

    config.ssh.insert_key = false
    
    if Vagrant.has_plugin?("vagrant-hostmanager")
        config.hostmanager.enabled = true
        config.hostmanager.manage_host = true
        config.hostmanager.ignore_private_ip = false
        config.hostmanager.include_offline = true
    end

    config.vm.define "jump-host" do |node|
        node.vm.hostname = "kamops-jump-host"
        node.vm.network "private_network", ip: "10.13.10.10"

        node.vm.provider "virtualbox" do |vb|
            vb.name = "kamops-jump-host"
            vb.memory = 512

        end
    end
end