class lampstack::php {
  package { ['php', 'php-mysql', 'php-fpm']:
    ensure => "present",
  }
 
  file { "/var/www/html/info.php":
    ensure => "present",
    mode   => "0664",
    owner  => "root",
    group  => "root",
    content => "<?php phpinfo(); ?>",
    notify => Class['lampstack::apache'],
  }
}
