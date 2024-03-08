#!/usr/bin/env bash
# Automates the task of creating a custom HTTP header response with Puppet.

exec { 'append-custom-header':
  command => "echo '\n	add_header X-Served-By \$hostname;' >> /etc/nginx/sites-available/default",
  path    => ['/bin', '/usr/bin'],
  unless  => "grep -Fxq '	add_header X-Served-By \$hostname;' /etc/nginx/sites-available/default",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Exec['append-custom-header'],
}
