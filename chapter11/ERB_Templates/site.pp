node "yd1papp01.thinknyx.com" {
  $role=hiera('role')
  include $role
}

