# This Puppet manifest adjusts file descriptor limits for the holberton user.

file_line { 'set_soft_limit':
  path  => '/etc/security/limits.conf',
  line  => 'holberton soft nofile 4096',
  match => '^holberton soft nofile',
}

file_line { 'set_hard_limit':
  path  => '/etc/security/limits.conf',
  line  => 'holberton hard nofile 65536',
  match => '^holberton hard nofile',
}

exec { 'reload_pam_limits':
  command => 'service sshd restart',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
}
