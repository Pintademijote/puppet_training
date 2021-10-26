mkdir /etc/puppetlabs/code/environments/wordpress/
puppet module install puppetlabs-docker --version 4.1.2 --environment wordpress
mkdir /etc/puppetlabs/code/environments/wordpress/{manifests,modules}
mkdir /etc/puppetlabs/code/environments/wordpress/modules/project/
mkdir /etc/puppetlabs/code/environments/wordpress/modules/project/{templates,manifests}
cp /home/vagrant/puppet/projet/1_firewall_docker.pp /etc/puppetlabs/code/environments/wordpress/modules/project/manifests/init.pp
cp /home/vagrant/puppet/projet/2_run_docker_compose.pp /etc/puppetlabs/code/environments/wordpress/manifests/2_run_docker_compose.pp