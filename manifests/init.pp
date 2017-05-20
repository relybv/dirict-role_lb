# == Class: role_lb
#
# Full description of class role_lb here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class role_lb
{
  # a role includes one or more profiles and at least a 'base' profile
  include ::profile_base
  # include rspec monitor to make rspec acceptance test available to monitor system
  include ::profile_base::rspec_monitor
  include ::profile_telegraf
  include ::profile_telegraf::rspec_monitor
  include ::profile_beats
  include ::profile_beats::rspec_monitor
  include ::profile_haproxy
  include ::profile_haproxy::rspec_monitor
}
