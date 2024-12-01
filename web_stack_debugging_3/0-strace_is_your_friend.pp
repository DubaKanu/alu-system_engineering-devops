# Puppet script
$file = '/var/www/html/wp-settings.php'
exec { 'replace_phpp_with_php':
  command => "sed -i 's/phpp/php/g' ${file}",
  path    => ['/bin','/usr/bin']
}
