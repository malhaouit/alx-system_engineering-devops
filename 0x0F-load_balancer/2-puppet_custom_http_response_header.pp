#!/usr/bin/env bash
# Automates the task of creating a custom HTTP header response but Puppet.

exec { 'append-custom-header':
  command => "echo '\n    add_header X-Served-By \$hostname;' >> /etc/nginx/sites-available/default",
  path    => ['/bin', '/usr/bin'],
  unless  => "grep -Fxq '    add_header X-Served-By \$hostname;' /etc/nginx/sites-available/default",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}

file { '/etc/nginx/sites-available/default-permissions':
  ensure => file,
  path   => '/etc/nginx/sites-available/default',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}
