class project(String $path_to_script = '/home/vagrant/puppet/projet/') {
  #$path_to_script='/home/vagrant/puppet/projet/'
  file { '/tmp/script_install.sh':
    ensure  => file,
    source  => "puppet:///modules/project/script_install.sh",
    before => Exec['bash /tmp/script_install.sh'],
  }

  exec { 'bash /tmp/script_install.sh':
    cwd     => '/',
    path    => ['/usr/bin', '/usr/sbin',],
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
