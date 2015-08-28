VAGRANTFILE_API_VERSION = "2"
  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
   config.vm.define "devenv" do |devenv|
     devenv.vm.box = "chef/centos-7.1"
     config.vm.network "forwarded_port", guest: 7878, host: 7878
     config.vm.provider "virtualbox" do |vb|
         # Display the VirtualBox GUI when booting the machine
#       vb.customize ["modifyvm", :id, "--vram", "128"] 
       vb.gui = true
         # Customize the amount of memory on the VM:
       vb.memory = "1024"
     end
     config.vm.provision "ansible" do |ansible|
       ansible.playbook = "devenv.yml"
     end
   end
end
