include 'project'
include 'docker'

file { '/tmp/wordpress.yml':
  ensure  => file,
  source  => 'puppet:///modules/project/wordpress.yml',
  path    => '/tmp/wordpress.yml',
  owner => 'root',
  group => 'root',
  mode  => '0744',
}

docker_compose { 'docker_compose':
  compose_files => ['/tmp/wordpress.yml'],
  ensure  => present,
  require => File['/tmp/wordpress.yml'],
}
