VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = "smart-vm"
  
  # Use Ubuntu 12.04 64-bit by default. If 32-bit Ubuntu is desired, replace the settings below with the two alternative ones.
  config.vm.box = "ubuntu/precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  # config.vm.box = "ubuntu/precise32"
  # config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"
  
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  
  config.vm.network "forwarded_port", guest: 7000, host: 7000
  config.vm.network "forwarded_port", guest: 7001, host: 7001
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.network "forwarded_port", guest: 9002, host: 9002
  config.vm.network "forwarded_port", guest: 9003, host: 9003
  
  config.vm.provision "shell", path: "provisioning/fetch-templates.sh", args: "/vagrant/provisioning/templates/config"
  
  config.vm.provision "ansible" do |ansible|
    #ansible.inventory_path = "provisioning/hosts"
    ansible.extra_vars = {
      hostname: "localhost"
    }
    # ansible.verbose = "v"
    ansible.playbook = "provisioning/smart.yml"
  end
  
end
