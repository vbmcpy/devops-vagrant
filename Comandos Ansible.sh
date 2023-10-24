# O Ansible não suporta NFS com protocolo UDP portanto ao criar o VagrantFile inserir o parametro no NFS abaixo:

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "control-node"
  config.vm.network "private_network", ip: "192.168.0.2"
  config.vm.synced_folder ".", "/vagrant", type: "nfs", nfs_udp: false # desta forma a montagem do NFS ocorre sem erros.
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.name = "Control-Node Ansible"
end
end
