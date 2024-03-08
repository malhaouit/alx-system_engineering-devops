#!/usr/bin/env bash
# Automates the task of creating a custom HTTP header response with Puppet.

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Exec['append-custom-header'],
}

exec { 'append-custom-header':
  command => "echo '\n	add_header X-Served-By \$hostname;' >> /etc/nginx/sites-available/default",
  path    => ['/bin', '/usr/bin'],
  require => Package['nginx'],
  notify  => Service['nginx'],
}

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  require    => Package['nginx'],
}
