sudo yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm 
sudo yum install -y ansible 
cd /vagrant
ansible-playbook -i "localhost," -c local devenv.yml 
