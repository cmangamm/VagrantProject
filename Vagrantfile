Vagrant.configure("2") do |config|
  config.vm.define "server1" do |server1|
    server1.vm.box="centos/7"
    server1.vm.hostname="server1.cisco.com"
    server1.vm.network:private_network,ip:"192.168.56.101"
	server1.vm.provision:shell,path:"http.sh"
  end
  config.vm.define "server2" do |server2|
    server2.vm.box="centos/7"
    server2.vm.hostname="server2.cisco.com"
    server2.vm.network :private_network,ip: "192.168.56.102"
    server2.vm.provision:shell,path:"http.sh"
  end
  config.vm.define "server3" do |server3|
    server3.vm.box="centos/7"
    server3.vm.hostname="server3.cisco.com"
    server3.vm.network :private_network,ip: "192.168.56.103"
    server3.vm.provision:shell,path:"http.sh"
  end
  config.vm.define "server4" do |server4|
    server4.vm.box="centos/7"
    server4.vm.hostname="server4.cisco.com"
    server4.vm.network:private_network,ip:"192.168.56.104"
    server4.vm.provision:shell,path:"http.sh"
    server4.vm.provider:"virtualbox" do |vb|
      vb.cpus=2
      vb.memory=1024
    end
  end
  config.vm.define "server5" do |config|
    config.vm.box="centos/7"
	config.vm.hostname="server5.cisco.com"
	config.vm.network:private_network,ip:"192.168.56.105"
	config.vm.provision:shell,path:"http.sh"
  end
  config.vm.define "server6" do |config|
    config.vm.box="centos/7"
	config.vm.hostname="server6.cisco.com"
	config.vm.network:private_network,ip:"192.168.56.106"
	config.vm.provision:shell,path:"http.sh"
  end
  config.vm.define "server7" do |config|
    config.vm.box="centos/7"
	config.vm.hostname="server6.cisco.com"
	config.vm.network:private_network,ip:"192.168.56.107"
	config.vm.provision:shell,path:"http.sh"
  end
  config.vm.provision:"ansible_local" do |ansible|
    ansible.playbook="playbook.yml"
    ansible.verbose=true
	ansible.groups={"nodes"=>["server[1:4]"],"group"=>"server5","group2"=>"server6"}
  end
end
