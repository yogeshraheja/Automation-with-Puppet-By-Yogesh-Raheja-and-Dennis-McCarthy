class file_line_test {

  # Puppet controls PermitRootLogin in /tmp/sshd_config file.
  file_line{'/tmp/sshd_config PermitRootLogin':
    path   => '/tmp/sshd_config',
    line   => 'PermitRootLogin no',
    match  => '^#PermitRootLogin ',
  }
  # Puppet controls X11Forwarding in /tmp/sshd_config file.
  file_line{'/tmp/sshd_config X11Forwarding':
    path   => '/tmp/sshd_config',
    line   => 'X11Forwarding no',
    match  => '^X11Forwarding yes',
  }
}


