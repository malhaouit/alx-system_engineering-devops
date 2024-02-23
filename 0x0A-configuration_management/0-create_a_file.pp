# This manifest creates a file at /tmp/school with specific properties

file { '/tmp/school':
  ensure  => 'file',               # Ensure the resource is a file
  content => 'I love Puppet',      # Content of the file
  mode    => '0744',               # File permission
  owner   => 'www-data',           # File owner
  group   => 'www-data',           # File group
}
