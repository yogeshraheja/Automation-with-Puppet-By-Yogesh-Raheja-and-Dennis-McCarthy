class lampstack::apache {
  package { "httpd":
    ensure => "present",
  }

  service { "httpd":
    ensure => "running",
    enable => "true",
  }
}
