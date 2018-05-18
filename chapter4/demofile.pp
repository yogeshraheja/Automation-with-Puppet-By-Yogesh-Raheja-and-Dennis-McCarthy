file { "/var/tmp/firstfile":
	ensure	=> "present",
	mode	=> "0777",
	owner	=> "root",
	group	=> "root",
	content	=> "Hello All, Welcome to the Automation World of Puppet!"
}
