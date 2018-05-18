class role_app {

notify { 'role_app': }

  include profile_base
  include profile_app
}

