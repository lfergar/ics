#VAGRANTFILE_API_VERSION = "2"
#  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
#   config.vm.define "devenv" do |devenv|
#     devenv.vm.box = "chef/centos-7.1"
#     config.vm.network "forwarded_port", guest: 7878, host: 7878
#     config.vm.provider "virtualbox" do |vb|
#         # Display the VirtualBox GUI when booting the machine
#       vb.customize ["modifyvm", :id, "--vram", "128"] 
#       vb.gui = true
#         # Customize the amount of memory on the VM:
#       vb.memory = "1024"
#     end
#     config.vm.provision "ansible" do |ansible|
#       ansible.playbook = "devenv.yml"
#     end
#   end
#end

VAGRANTFILE_API_VERSION = "2"
  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
   config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
   config.vm.define "devenv" do |devenv|
     devenv.vm.box = "esss/centos-7.1-desktop"
      config.vm.provision :shell,
      :keep_color => true,
      :inline => 'export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant && ./init.sh'
   end
end

#      :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant/provisioning && ./init.sh"

#      :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant && sudo yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm && echo hello && sudo yum install -y ansible && cd /vagrant/provisioning && ansible-playbook devenv.yml --connection=local"

#      :inline => 'export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant && ansible-playbook devenv.yml'
