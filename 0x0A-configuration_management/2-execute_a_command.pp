# This manifest uses the exec resource to kill a process named killmenow

exec { 'kill-killmenow-process':
  command   => 'pkill -f killmenow',
  path      => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  onlyif    => 'pgrep -f killmenow',
}
