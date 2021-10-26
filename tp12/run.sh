mkdir /etc/puppetlabs/code/environments/dev/
mkdir /etc/puppetlabs/code/environments/dev/{manifests,modules}
cp -rf /etc/puppetlabs/code/environments/production/modules/nginx/ /etc/puppetlabs/code/environments/dev/modules/nginx/
cp -rf /etc/puppetlabs/code/environments/production/manifests/nginx_v7.pp /etc/puppetlabs/code/environments/dev/manifests/nginx_v7.pp
cp -rf /home/vagrant/puppet/tp12/content.epp /etc/puppetlabs/code/environments/dev/modules/nginx/templates/

