class apachedemo {

# Install epel-repository package if not installed
        exec { "Install EPEL-Repo":
                command => "/usr/bin/yum -y install epel-release",
                }

# Apache Pacakage Installation Code
        package { "httpd":
                ensure => "present",
                before => Service['httpd'],
                }

# Configuring simple index.html file with some test content
        file { "/var/www/html/index.html":
                ensure  => "present",
                content => "<html>
        <body>
          <h1>Hello All, Thanks for your interest in learning configuration management tool Puppet with \"Automation with Puppet\" by Yogesh Raheja and Dennis McCarthy.This test is to install Apache webserver Application on \"yd1papp01.thinknyx.com\" Puppet Node \"using node definitions\" in Puppet </h1>
        </body>
    </html>",
                require => Package['httpd'],
                }

# Enable and Start apache service
        service { "httpd":
                ensure    => "running",
                enable    => "true",
                subscribe => File['/var/www/html/index.html'],
                }
}
