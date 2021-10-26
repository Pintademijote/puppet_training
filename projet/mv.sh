mkdir /etc/puppetlabs/code/environments/wordpress/
puppet module install puppetlabs-docker --version 4.1.2 --environment wordpress
mkdir /etc/puppetlabs/code/environments/wordpress/{manifests,modules}
mkdir /etc/puppetlabs/code/environments/wordpress/modules/project/
mkdir /etc/puppetlabs/code/environments/wordpress/modules/project/{templates,manifests,files}
cp /home/vagrant/puppet/projet/1_firewall_docker.pp /etc/puppetlabs/code/environments/wordpress/modules/project/manifests/init.pp
cp /home/vagrant/puppet/projet/2_run_docker_compose.pp /etc/puppetlabs/code/environments/wordpress/manifests/2_run_docker_compose.pp
cp -rf /home/vagrant/puppet/projet/wordpress.yml /etc/puppetlabs/code/environments/wordpress/modules/project/files/
cp -rf /home/vagrant/puppet/projet/script_install.sh /etc/puppetlabs/code/environments/wordpress/modules/project/files/
cp -rf /etc/puppetlabs/code/environments/wordpress/modules/project/ /etc/puppetlabs/code/environments/wordpress/modules/project/