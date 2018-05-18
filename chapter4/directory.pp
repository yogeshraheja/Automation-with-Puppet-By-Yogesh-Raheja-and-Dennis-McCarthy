file { "/var/tmp/demodirectory":
	ensure => "directory",
	mode   => "0777",
	owner  => "cloud",
	group  => "cloud",
}
	
