# Automates the task of creating a custom HTTP header response but Puppet.

package { 'nginx':
  ensure => installed,
}

file_line { 'add-custom-header':
  path               => '/etc/nginx/sites-available/default',
  line               => '    add_header X-Served-By $hostname;',
  after              => 'listen 80 default_server;',
  match              => '^\\s*add_header X-Served-By',
  append_on_no_match => true,
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
  ensure  => running,
  enable  => true,
  require => File_line['add-custom-header'],
}
