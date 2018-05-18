class motd {
  file { "/etc/motd":
    ensure  => "file",
    content => "My host with FQDN $::fqdn is having IP adress $::ipaddress\n"
  }
}
