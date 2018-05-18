define define_test::resource ($data) {
  file {"$name":
    ensure  => file,
    content => $data,
  }
}

