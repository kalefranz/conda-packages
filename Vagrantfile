# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "bento/centos-5.11"

    config.vm.synced_folder ".", "/vagrant", type: "nfs", nfs_udp: false

    config.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "4"  # virtual cpus should optimally be 2x coresPerSocket
      v.vmx["cpuid.coresPerSocket"] = "2"
    end

    config.vm.provision "shell", inline: "sudo yum install -y python-simplejson"

    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "../ansible/vagrant-bootstrap.yml"
    end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "../ansible/vagrant-conda.yml"
  end

end
