# == Class role_lb::params
#
# This class is meant to be called from role_lb.
# It sets variables according to platform.
#
class role_lb::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'role_lb'
      $service_name = 'role_lb'
    }
    'RedHat', 'Amazon': {
      $package_name = 'role_lb'
      $service_name = 'role_lb'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
