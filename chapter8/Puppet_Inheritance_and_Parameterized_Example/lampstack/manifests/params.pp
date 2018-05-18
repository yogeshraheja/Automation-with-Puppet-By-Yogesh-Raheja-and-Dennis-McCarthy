class lampstack::params {

# Required packages
  $apachepackage = 'httpd'
  $mariadbpackage = 'mariadb-server' 
  $phppackage = ['php', 'php-mysql', 'php-fpm']

# Required services
  $apacheservice = 'httpd'
  $mariadbservice = 'mariadb'
  $ensureservice = 'running'

# PHP File defaults
  $file   = "/var/www/html/info.php"
  $mode   = "0664"
  $owner  = "root"
  $group  = "root"
  $content = "<?php phpinfo(); ?>"
}
