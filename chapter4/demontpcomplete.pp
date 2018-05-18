package { "ntp":
	ensure	=> "present",
        before  => File['/etc/ntp.conf']
}

file { "/etc/ntp.conf":
	ensure	=> "present",
	content	=> "server 0.centos.pool.ntp.org iburst
server 1.centos.pool.ntp.org iburst
server 2.centos.pool.ntp.org iburst\n"
}

service { "ntpd":
	ensure	=> "running",
	enable	=> "true",
	subscribe => File['/etc/ntp.conf'],
}
