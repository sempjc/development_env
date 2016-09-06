# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.

  # Box
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: 'machine_dependency.sh'

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"


  # Depending on OS uncommented to share
  # Windows
  # Adding C as shared folder
   config.vm.synced_folder "/xampp", "/vagrant/xampp"

  # config.vm.synced_folder "/Users", "/vagrant/Users"

  # Mac
  # Adding ... as shared folder
  # confing.vm.synced_folder

end
