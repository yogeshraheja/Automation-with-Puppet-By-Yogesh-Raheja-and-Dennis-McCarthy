# Class: lampstack
# ===========================
# This Module is create to demonstrate the power of nested classes in Puppet
# Authors
# -------
#
# Author Name: Yogesh Raheja and Dennis McCarthy
#
class lampstack {
  include lampstack::apache
  include lampstack::php
  include lampstack::mariadb
}
