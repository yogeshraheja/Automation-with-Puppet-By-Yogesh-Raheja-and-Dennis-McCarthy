class nginxdemo {

# Install epel-repository package if not installed
        exec { "Install EPEL-Repo":
                command => "/usr/bin/yum -y install epel-release",
                }

# Nginx Pacakage Installation Code
        package { "nginx":
                ensure => "present",
                before => Service['nginx'],
                }

# Configuring simple index.html file with some test content
        file { "/usr/share/nginx/html/index.html":
                ensure  => "present",
                content => "<html>
        <body>
          <h1>Hello All, Thanks for your interest in learning configuration management tool Puppet with \"Automation with Puppet\" by Yogesh Raheja and Dennis McCarthy. This test is to install Nginx Application on all server using \"default node definitions\" in Puppet</h1>
        </body>
    </html>",
                require => Package['nginx'],
                }

# Enable and Start Nginx service
        service { "nginx":
                ensure    => "running",
                enable    => "true",
                subscribe => File['/usr/share/nginx/html/index.html'],
                }
}

