class lampstack::php (

  $ensure = 'present',
  $package = $lampstack::params::phppackage,
  $mode = $lampstack::params::mode,
  $owner = $lampstack::params::owner,
  $group = $lampstack::params::group,
  $content = $lampstack::params::content,

) inherits ::lampstack::params {

  package { $package:
    ensure => $ensure,
  }
 
  file { $file:
    ensure => $ensure,
    mode   => $mode,
    owner  => $owner,
    group  => $group,
    content => $content,
    notify => Class['lampstack::apache'],
  }
}
