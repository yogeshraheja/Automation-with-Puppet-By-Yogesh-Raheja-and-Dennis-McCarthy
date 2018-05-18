class dockerengine {
  yumrepo { 'docker-ce-stable':
    ensure   => 'present',
    baseurl  => 'https://download.docker.com/linux/centos/7/$basearch/stable',
    descr    => 'Docker CE Stable - $basearch',
    enabled  => '1',
    gpgcheck => '1',
    gpgkey   => 'https://download.docker.com/linux/centos/gpg',
  }
  package { ['yum-utils', 'device-mapper-persistent-data', 'lvm2', 'deltarpm', 'docker-ce']:
    ensure   => "present",
  }
  service { "docker":
    ensure   => "running",
    enable   => "true",
  }
  exec { "docker run hello-world":
    path     => ['/usr/bin', '/usr/sbin',],
    logoutput => "true",
  }
}

