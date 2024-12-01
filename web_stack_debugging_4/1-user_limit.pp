# This Puppet manifest adjusts file descriptor limits for the holberton user.

file_line { 'increase_soft_limit':
  path  => '/etc/security/limits.conf',
  line  => 'holberton soft nofile 4096',
  match => '^holberton soft nofile',
}

file_line { 'increase_hard_limit':
  path  => '/etc/security/limits.conf',
  line  => 'holberton hard nofile 65536',
  match => '^holberton hard nofile',
}

exec { 'reload_limits':
  command => 'sysctl -p',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  onlyif  => 'test -f /etc/security/limits.conf',
}
