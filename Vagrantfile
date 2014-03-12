VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = "smart-vm"
  config.vm.box = "ubuntu/precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  
  config.vm.network "forwarded_port", guest: 7000, host: 7000
  config.vm.network "forwarded_port", guest: 7001, host: 7001
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  
  config.vm.provision "shell", path: "bootstrap.sh"
  
  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "provisioning/hosts"
    ansible.extra_vars = {
      hostname: "localhost"
    }
    # ansible.verbose = "v"
    ansible.playbook = "provisioning/smart.yml"
  end
  
end
