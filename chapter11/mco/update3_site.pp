node "default" {
  $role=hiera('role')
  include $role
}
node "puppetmaster.thinknyx.com" {
  class {'::mcollective':
    client => true,
    server => false,
  }
  class {'::nats':}
}

