# Install flask 2.1.0 using pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  command => 'pip3 install Flask==2.1.0',
  unless  => 'pip3 freeze | grep Flask==2.1.0',
  require => Package['python3-pip'],
}

exec { 'install-werkzeug':
  command => 'pip3 install Werkzeug',
  unless  => 'pip3 freeze | grep Werkzeug',
  require => Exec['install-flask'],
}
