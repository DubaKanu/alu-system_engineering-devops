# This Puppet script adjusts the OS configuration to increase file descriptor limits for the holberton user.
exec { 'adjust-file-descriptor-limits':
  command => '/bin/echo "holberton soft nofile 4096\nholberton hard nofile 65536" >> /etc/security/limits.conf',
  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
}
