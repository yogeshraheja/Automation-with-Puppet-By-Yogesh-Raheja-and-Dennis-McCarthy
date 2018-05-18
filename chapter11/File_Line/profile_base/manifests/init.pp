class profile_base {

notify { 'profile_base': }

  include mcollective
  include template_test
  include file_line_test
}

