# This puppet manifest uses sed command to set the open file limits for nginx in /etc/default/nginx

exec { 'set_nginx_limit':
  command => '/bin/sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 2000\"/" /etc/default/nginx',
  notify  => Exec['restart-nginx'],
}

exec { 'restart-nginx':
  command     => '/usr/sbin/service nginx restart',
  refreshonly => true,
}
