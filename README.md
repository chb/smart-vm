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

*Note:* The last step in the build process ("Load Sample Patients in SMART Server") may fail occasionally.
We are aware of this issue and working on resolving it. In the meanwhile, should you encounter this, here
is a quick fix:

```
vagrant ssh
sudo su - smart
./smart_manager.py -l
exit
exit
```