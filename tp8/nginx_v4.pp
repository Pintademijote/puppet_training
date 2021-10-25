$application = "nginx"
$version     = "V4"
$content     = "<h1>george ${application}-${version}</h1>"
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
    content => $content,
    notify  => Service['start app'],
  }
}
