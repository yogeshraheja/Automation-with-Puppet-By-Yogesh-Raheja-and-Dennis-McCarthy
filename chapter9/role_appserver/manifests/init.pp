class role_appserver {
  include profile_appserver

notify { "this is appserver role taking Modules included in  profile_appserver": }

}
