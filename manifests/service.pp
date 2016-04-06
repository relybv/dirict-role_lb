# == Class role_lb::service
#
# This class is meant to be called from role_lb.
# It ensure the service is running.
#
class role_lb::service {

  service { $::role_lb::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
