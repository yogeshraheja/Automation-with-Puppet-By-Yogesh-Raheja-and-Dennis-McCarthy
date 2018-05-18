class define_test {

  define_test::resource {'/tmp/hello_define1':
    data => "Hello Yogesh Raheja. This is the first define\n",
  }
  define_test::resource {'/tmp/hello_define2':
    data => "Hello Dennis McCarthy. This is the Second Define\n",
  }
}

