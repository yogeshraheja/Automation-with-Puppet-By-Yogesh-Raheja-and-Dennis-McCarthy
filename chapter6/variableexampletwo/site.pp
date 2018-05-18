node "yd1papp01.thinknyx.com" {
  include motd
  include varexample
  class { 'flexivariable':
    first => "changedYOGESH",
    third => "changedRAHEJA",
  }
}
