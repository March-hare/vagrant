# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define :mesh2 do |mesh2_config|
    mesh2_config.vm.box = "mesh2"
    mesh2_config.vm.host_name = 'mesh2'
    mesh2_config.vm.network :hostonly, "10.65.65.2"
  end

  config.vm.define :mesh3 do |mesh3_config|
    mesh3_config.vm.box = "mesh3"
    mesh3_config.vm.host_name = 'mesh3'
    mesh3_config.vm.network :hostonly, "10.65.65.3"
  end

  config.vm.define :mesh4 do |mesh4_config|
    mesh4_config.vm.box = "mesh4"
    mesh4_config.vm.host_name = 'mesh4'
    mesh4_config.vm.network :hostonly, "10.65.65.4"
  end

  config.vm.define :mesh5 do |mesh5_config|
    mesh5_config.vm.box = "mesh5"
    mesh5_config.vm.host_name = 'mesh5'
    mesh5_config.vm.network :hostonly, "10.65.65.5"
  end

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :puppet, :module_path => "modules", :options => "--verbose --debug" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
  end

end
