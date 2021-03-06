require 'spec_helper'

describe 'role_lb' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts.merge({
            :concat_basedir  => "/foo",
            :member_ips      => "127.0.0.1",
            :member_names    => "localhost",
            :monitor_address => "localhost"
          })
        end

        context "role_lb class without any parameters" do
          let(:params) {{ }}

          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_class('role_lb') }
       
          it { is_expected.to contain_class('profile_base') }
          it { is_expected.to contain_class('profile_haproxy') }

        end
      end
    end
  end
end
