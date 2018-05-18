class varexample {
  $dir     = "/var/tmp/example"
  $nameone = "yogesh"
  $nametwo = "dennis"

  file { "$dir":
    ensure => directory,
  }

  file { "${dir}/test":
    ensure => "file",
    content=> "This file is created by ${nameone} and ${nametwo}\n"
  }
}
