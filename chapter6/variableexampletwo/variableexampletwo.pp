class flexivariable (
  $first  = "yogesh",
  $second = "dennis",
  $third  = "raheja",
  $fourth = "maccarthy",
  ) {
    file { "/var/tmp/testfile":
      ensure  => "file",
      content => "This file is created by ${first} ${third} and ${second} ${fourth}\n",
    }
}
