# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Debian12
  config.vm.box = "debian/bookworm64"

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = "kind-cluster-in-debian"
    vb.memory = 8192
    vb.cpus = 4
    vb.gui = true
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["setextradata", :id, "GUI\/LastGuestSizeHint", "1920,1080"]
  end

  config.vm.provision 'shell', path: './vm-scripts/provision.sh'
  config.vm.provision 'shell', reboot: true

end
