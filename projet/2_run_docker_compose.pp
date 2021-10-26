include 'wordpress'
include 'docker'

docker_compose { 'docker_compose':
  compose_files => ['/home/vagrant/puppet/projet/wordpress.yml'],
  ensure  => present,
}
