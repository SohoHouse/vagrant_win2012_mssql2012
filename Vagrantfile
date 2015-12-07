# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

if ! File.exists?('MSSQL2012_x64_180_day_eval/SQLFULL_x64_ENU_Install.exe')
  puts 'Microsoft® SQL Server® 2012 Evaluation installers could not be found!'
  puts 'Please download the following:'
  puts '- - - - - - - - - - - - - - - - - - - -'
  puts 'SQLFULL_architecture_language_Lang.box'
  puts 'SQLFULL_architecture_language_Install.exe'
  puts 'SQLFULL_architecture_language_Core.box'
  puts '- - - - - - - - - - - - - - - - - - - -'
  puts 'from: https://www.microsoft.com/en-gb/download/details.aspx?id=29066'
  puts '- - - - - - - - - - - - - - - - - - - -'

  exit 1
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network :forwarded_port, guest: 3389, host: 3389

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
    v.customize ["modifyvm", :id, "--vram", "32"]
  end
  config.vm.provision :shell, path: "scripts/install-dot-net.ps1"
  config.vm.provision :shell, path: "scripts/install-sql-server.cmd"
  config.vm.provision :shell, path: "scripts/configure-sql-port.ps1"
  config.vm.provision :shell, path: "scripts/enable-rdp.ps1"
end
