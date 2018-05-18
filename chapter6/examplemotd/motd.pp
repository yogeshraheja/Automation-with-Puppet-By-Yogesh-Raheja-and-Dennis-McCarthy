class motd {
$message = "Automation with Puppet example for variables defined for motd class\n"

  file { "/etc/motd":
    ensure  => "file",
    content => "$message",
  }
}
