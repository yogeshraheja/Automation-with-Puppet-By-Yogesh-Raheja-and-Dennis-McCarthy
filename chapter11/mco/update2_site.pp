node "default" {
}
node "puppetmaster.thinknyx.com" {
  class {'::mcollective':
    client => true,
    server => false,
  }
  class {'::nats':}
}

