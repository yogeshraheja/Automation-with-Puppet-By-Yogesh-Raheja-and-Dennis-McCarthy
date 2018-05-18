class lampstack::apache (

  $ensure = 'present',
  $package = $lampstack::params::apachepackage,
  $service = $lampstack::params::apacheservice,
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
