class project(String $path_to_script = '/home/vagrant/puppet/projet/') {
  #$path_to_script='/home/vagrant/puppet/projet/'
  file { '/tmp/script_install.sh':
    ensure  => file,
    source  => 'puppet:///modules/project/files/script_install.sh',
    path    => '/tmp/script_install.sh',
    owner => 'root',
    group => 'root',
    notify  => Exec['bash /tmp/script_install.sh'],
  }

  exec { 'bash /tmp/script_install.sh':
    command => '/tmp/script_install.sh',
    notify => Service['start docker'],
  }

  service { 'start docker':
    name      => 'docker',
    ensure    => 'running',
    enable    => 'true',
    subscribe => [
      Exec['bash /tmp/script_install.sh'],
    ],
  }
}
