package { 'nginx':
  ensure   => 'installed',
}

service { 'nginx':
  ensure   => 'running',
  enable   => 'true',
}

file { '/usr/share/nginx/html/index.html]':
  ensure   => 'file',
  content => '<h1>george</h1>',
}
