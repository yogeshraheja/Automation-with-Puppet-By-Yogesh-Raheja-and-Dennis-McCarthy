class profile_base {

notify { 'profile_base': }

  include motd
  include ntp
}

