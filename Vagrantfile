# -*- mode: ruby -*-
# vi: set ft=ruby :
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu14.04-x86-p8"
  
  config.vm.network "forwarded_port", guest: 8080, host: 8686 #Jenkins

  config.vm.provider :virtualbox do |vb|
	  vb.name = "vagrant-jenkins-p8"
  end

  # Make sure we have properly udpated apt
  #config.vm.provision 'shell',
       #:inline => 'if [ ! -f "/apt-cached" ]; then apt-get update && touch /apt-cached; fi'
      #:inline => 'apt-get update'

  config.vm.provision :puppet do |puppet|
	  puppet.manifests_path = "myjenkins/examples"
    puppet.manifest_file = "init.pp"
		puppet.module_path = ['.','myjenkins/spec/fixtures/modules']
  end
end
