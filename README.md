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

Create/turn on the VM with `vagrant up`.  
Once up, you may access the VM by running `vagrant ssh` or by using VirtualBox 
GUI, getting a shell and getting inside the VM by using default credentials, 
which are `vagrant` username and `vagrant` password.

Other repositories flow into this repository and are included here as git 
submodules in the `projects` folder.

At the moment the following repositories are here included:

- [local-kind-cluster](https://github.com/elmazzun/local-kind-cluster): a 
  Kubernetes in Docker (KinD) for testing Kubernetes workload

- [node-operator](https://github.com/elmazzun/node-operator): a Kubernetes 
  operator, tested against the KinD cluster

- [ebpf-lab](https://github.com/elmazzun/ebpf-lab): a containerized eBPF build 
  pipeline
