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

  include ::profile_haproxy
}
