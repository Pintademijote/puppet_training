class nginx(String $version = "latest", String $application = "nginx") {
  #$application = "nginx"
  #$version     = "V6"
  #$content     = "<h1>george ${application}-${version}</h1>"
  package { 'install app':
    name   => $application,
    ensure => 'installed',
    notify => Service['start app'],
  }

  service { 'start app':
    name      => $application,
    ensure    => 'running',
    enable    => 'true',
    subscribe => [
      Package['install app'],
      File['/usr/share/nginx/html/index.html'],
    ],
  }

  if $osfamily == 'Redhat' {
    file { '/usr/share/nginx/html/index.html':
      ensure  => 'file',
      content => epp("nginx/content_template.epp"),
      notify  => Service['start app'],
    }
  }
}