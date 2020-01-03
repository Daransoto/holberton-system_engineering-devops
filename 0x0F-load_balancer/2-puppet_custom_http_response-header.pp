package { 'nginx':
  ensure => installed
}
file_line {'header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'add_header X-Served-By $hostname;'
}
service {'nginx':
  ensure  => running
}
