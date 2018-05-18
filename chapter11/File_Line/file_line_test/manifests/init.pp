class file_line_test {

  # Puppet controls PermitRootLogin in /tmp/sshd_config file.
  file_line{'/tmp/sshd_config PermitRootLogin':
    path   => '/tmp/sshd_config',
    line   => 'PermitRootLogin no',
    match  => '^#PermitRootLogin ',
  }
}

