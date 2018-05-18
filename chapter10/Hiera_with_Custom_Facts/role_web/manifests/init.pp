class role_web {

notify { 'role_web': }

  include profile_base
  include profile_web
}

