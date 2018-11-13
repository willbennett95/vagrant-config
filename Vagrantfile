# -*- mode: ruby -*-

# vi: set ft=ruby :

require "yaml"
guests = YAML.load_file("guest_machines.yaml")

Vagrant.configure("2") do |config|
	# for each virtual machine
	guests.each do |guest_vm|
		config.vm.define guest_vm["name"] do |vm|
			#hostname
			vm.vm.hostname = guest_vm["name"]
			# virtualbox config
			vm.vm.provider "virtualbox" do |vb|
				vb.cpus = guest_vm["cpus"]
				vb.memory = guest_vm["memory"]
			end

			# box
			vm.vm.box = guest_vm["box"]
			vm.vm.network "private_network", ip: guest_vm["private_ip"]
			# run scripts
			guest_vm["scripts"].each do |script|
				vm.vm.provision "shell", path: script
			end
		end
	end
end
