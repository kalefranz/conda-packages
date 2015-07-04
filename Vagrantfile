# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "chef/centos-6.6"

    # config.ssh.username = "ttam"
    # config.ssh.private_key_path = "~/ttam/ansible/keys/ttam-shared"

    config.vm.synced_folder ".", "/vagrant", type: "nfs", nfs_udp: false

    config.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "4"  # virtual cpus should optimally be 2x coresPerSocket
      v.vmx["cpuid.coresPerSocket"] = "2"
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "/Users/kfranz/ttam/ansible/pb/vagrant-bootstrap.yml"
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "/Users/kfranz/ttam/ansible/pb/role.yml"
        ansible.extra_vars = {:ROLE => 'python'}
    end

end
