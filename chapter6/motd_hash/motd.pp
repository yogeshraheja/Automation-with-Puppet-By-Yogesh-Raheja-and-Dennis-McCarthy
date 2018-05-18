class motd {
  file { "/etc/motd":
    ensure  => "file",
    content => "My host ${facts['fqdn']} is running ${facts['os']['name']} ${facts['os']['release']['full']} OS with Kernel Level ${facts['kernelrelease']}\n"
  }
}
