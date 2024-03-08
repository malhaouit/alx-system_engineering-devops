# Automate the task of creating a custom HTTP header response, but with Puppet.

package { 'nginx':
  ensure => installed,
}

file_line { 'nginx-custom-header':
  path               => '/etc/nginx/sites-available/default',
  line               => '    add_header X-Served-By $hostname;',
  match              => '^    add_header X-Served-By',
  after              => 'server {',
  append_on_no_match => true,
  notify             => Service['nginx'],
  require            => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Package['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File_line['nginx-custom-header'],
}
