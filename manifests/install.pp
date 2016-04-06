# == Class role_lb::install
#
# This class is called from role_lb for install.
#
class role_lb::install {

  package { $::role_lb::package_name:
    ensure => present,
  }
}
