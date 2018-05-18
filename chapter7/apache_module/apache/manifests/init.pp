class apache {

# Variables for apache Module
$pkg       = "httpd"
$html_file = "/var/www/html/index.html"
$httpd_ser = "httpd"

# Install epel-repository package if not installed
        exec { "Install EPEL-Repo":
                command => "/usr/bin/yum -y install epel-release",
                }

# Apache Pacakage Installation Code
        package { "${pkg}":
                ensure => "present",
                before => Service["${httpd_ser}"],
                }

# Configuring simple index.html file with some test content
        file { "${html_file}":
                ensure  => "file",
		source  => "puppet:///modules/apache/index.html",
                require => Package["${pkg}"],
                }

# Enable and Start apache service
        service { "${httpd_ser}":
                ensure    => "running",
                enable    => "true",
                subscribe => File["${html_file}"],
                }
}
