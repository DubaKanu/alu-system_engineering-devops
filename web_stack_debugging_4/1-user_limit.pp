exec { 'change-os-configuration-for-holberton-user':
  command => '/bin/echo "holberton soft nofile 4096\nholberton hard nofile 65536" >> /etc/security/limits.conf && /sbin/sysctl -p',
  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
}
