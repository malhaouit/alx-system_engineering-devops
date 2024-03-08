# Add a custom HTTP header with Puppet

package { 'nginx':
  ensure => installed,
}

$hostname = $facts['networking']['hostname']

file_line { 'nginx_custom_header':
    path    => '/etc/nginx/sites-available/default',
    line    => "add_header X-Served-By '${hostname}';",
    match   => '^(\s*)#?add_header X-Served-By',
    replace => true,
    require => Package['nginx'],
    notify  => Service['nginx'],
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => File_line['nginx_custom_header'],
}
