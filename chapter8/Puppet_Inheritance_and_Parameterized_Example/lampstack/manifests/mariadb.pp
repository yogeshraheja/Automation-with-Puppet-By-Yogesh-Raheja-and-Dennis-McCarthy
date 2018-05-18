class lampstack::mariadb (

  $ensure = 'present',
  $package = $lampstack::params::mariadbpackage,
  $service = $lampstack::params::mariadbservice,
  $ensureservice = $lampstack::params::ensureservice,
  $enable = 'true',

) inherits ::lampstack::params {

 
  package { $package:
    ensure => $ensure,
  }
  
  service { $service:
    ensure => $ensureservice,
    enable => $enable,
  }
}
