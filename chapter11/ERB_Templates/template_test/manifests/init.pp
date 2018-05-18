class template_test {

file { '/tmp/yogesh.file':
    ensure    => file,
    content   => template('template_test/yogesh_info.erb'),
  }
}

