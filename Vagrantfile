# -*- mode: ruby -*-

# vi: set ft=ruby :



Vagrant.configure("2") do |config|
	# virtual machine names
	guests = ["jenkins", "deploy"]
	# ip
	ip = 10

	# for each virtual machine
	guests.each do |guest_vm|

		config.vm.define guest_vm do |vm|

		# virtualbox config
			vm.vm.provider "virtualbox" do |vb|
				vb.cpus = 1
				vb.memory = 2048
			end

		# box
		vm.vm.box = "centos/7"
		vm.vm.network "private_network", ip: "10.0.10.#{ip}"
		# increment the ip value for next time
		ip += 1
		# configure keys
		vm.vm.provision "shell", path: "init_ssh.bash"
		end
	end
end
