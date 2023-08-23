# Virtualized Debian 12 machine

A sandboxed environment where I can test whatever I want.

## Creating the Virtual Machine

Before anything, you must install [Vagrant](https://developer.hashicorp.com/vagrant/docs/installation) 
and [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

In order to build the working environment, you will create a Debian-based 
VM by running `vagrant up` command in the root folder of this repository.

The provisioning script `vm-scripts/provision.sh` will install the following 
components:

- `xfce4`

- `google-chrome`

- `terminator`

## Working with the VM

Ideally, this is how you would work while developing new eBPF programs:

- create/turn on the VM with `vagrant up`.  
  Once up, you may access the VM by running `vagrant ssh` or by using VirtualBox 
  GUI, getting a shell and getting inside the VM by using default credentials, 
  which are `vagrant` username and `vagrant` password.
