$path_to_script=/home/vagrant/puppet/projet/
exec { 'bash script_install.sh':
  cwd     => $path_to_script,
  path    => ['/usr/bin', '/usr/sbin',],
  notify => Service['start app'],
}

service { 'start docker':
  name      => 'docker',
  ensure    => 'running',
  enable    => 'true',
  subscribe => [
    Exec['bash script_install.sh'],
  ],
}

