if ENV['BEAKER'] == 'true'
  # running in BEAKER test environment
  require 'spec_helper_acceptance'
else
  # running in non BEAKER environment
  require 'serverspec'
  set :backend, :exec
end

describe 'role_lb class' do

  context 'default parameters' do
    if ENV['BEAKER'] == 'true'
      # Using puppet_apply as a helper
      it 'should work with no errors' do
        pp = <<-EOS
        class { 'role_lb': }
        EOS

        # Run it and test for errors
        apply_manifest(pp, :catch_failures => true)
      end
    end

       
   # a role can include one ore more profiles, testing if work idempotently with no errors is sufficient

  end
end
