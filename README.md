# SMART VM Builder

## Prerequisites

Make sure that you have the following installed on your system:

1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](http://www.vagrantup.com/downloads)
3. [Ansible](http://docs.ansible.com/intro_installation.html)

## Installation

Download the SMART-VM builder from GitHUB either directly from
[https://github.com/chb/smart-vm/releases](https://github.com/chb/smart-vm/releases)
or via git (if you have it installed):
```
git clone --recursive https://github.com/chb/smart-vm.git
```

Next, run the following commands:
```
cd smart-vm
vagrant up
```

... wait ~10min while everything installs (depending on your Internet connection speed).

Now visit [http://localhost:7001](http://localhost:7001) in a web browser and you should have a working SMART server.