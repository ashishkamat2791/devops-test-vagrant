Vagrant.configure("2") do |config|

config.vm.define "Swarm-Manager" do |smanager|
  smanager.vm.box = "ubuntu/xenial64"
  smanager.vm.provider "virtualbox" do |vb|
      smanager.vm.network "private_network",ip:'192.168.56.11',:adapter => 2
      smanager.vm.hostname = 'swarm.manager'
      vb.name = "swarm-manager"
      vb.memory ='1500'
      vb.cpus = 1

  end
  #smanager.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
  smanager.vm.provision "shell", path: "provision.sh"
  smanager.vm.provision "shell", path: "docker-compose-install.sh"
  #smanager.vm.synced_folder "backend-code", path: "/home/vagrant/backend-code",  type: "nfs"
 # smanager.vm.synced_folder "loadbalancer", path: "/home/vagrant/loadbalancer",  type: "nfs"
 # smanager.vm.synced_folder "token", path: "/tmp", type: "nfs"
end

config.vm.define "Worker1" do |worker|
  worker.vm.box = "ubuntu/xenial64"
  worker.vm.provider "virtualbox" do |vb|
      config.vm.network "private_network",ip:'192.168.56.12',:adapter => 2
      config.vm.hostname = 'swarm.worker1'
      vb.name = "swarm-worker1"
      vb.memory='1024'
      vb.cpus = 1

  end
  #worker.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
  worker.vm.provision "shell", path: "provision.sh"
  worker.vm.synced_folder "token.txt", "/tmp/token.txt"
end

config.vm.define "Worker2" do |worker|
  worker.vm.box = "ubuntu/xenial64"
  worker.vm.provider "virtualbox" do |vb|
      config.vm.network "private_network",ip:'192.168.56.13',:adapter => 2
      config.vm.hostname = 'swarm.worker2'
      vb.name = "swarm-worker2"
      vb.memory='1024'
      vb.cpus = 1

  end
  #worker.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
  worker.vm.provision "shell", path: "provision.sh"
  worker.vm.synced_folder "./token", "/tmp/token.txt"
end

end