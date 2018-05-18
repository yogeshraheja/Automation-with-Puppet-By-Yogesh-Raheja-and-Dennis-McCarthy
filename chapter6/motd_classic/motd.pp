class motd {
  file { "/etc/motd":
    ensure  => "file",
    content => "My host ${::fqdn} is running ${::os['name']} ${::os['release']['full']} OS with Kernel Level ${::kernelrelease}\n"
  }
}
