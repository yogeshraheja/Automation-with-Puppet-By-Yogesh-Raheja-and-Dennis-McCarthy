class appserver {

  package { "ntp":
	ensure	=> "present",
  }

  file { "/etc/ntp.conf":
	ensure	=> "file",
	content	=> "server 0.centos.pool.ntp.org iburst
server 1.centos.pool.ntp.org iburst
server 2.centos.pool.ntp.org iburst\n"
  }

  service { "ntpd":
	ensure	=> "running",
	enable	=> "true",
	subscribe => File['/etc/ntp.conf'],
  }
}
