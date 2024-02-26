# Using Puppet to make changes to our configuration file.

file_line { 'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^IdentityFile',
  replace => true,
}

file_line { 'Turn off passwd auth':
  ensure             => present,
  path               => '/etc/ssh/ssh_config',
  line               => 'PasswordAuthentication no',
  match              => '^PasswordAuthentication',
  append_on_no_match => true,
}

file_line { 'Turn off challenge response auth':
  ensure             => present,
  path               => '/etc/ssh/ssh_config',
  line               => 'ChallengeResponseAuthentication no',
  match              => '^ChallengeResponseAuthentication',
  append_on_no_match => true,
}
