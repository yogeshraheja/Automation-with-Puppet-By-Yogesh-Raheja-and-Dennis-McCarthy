require 'spec_helper'
describe 'profile_webserver' do
  context 'with default values for all parameters' do
    it { should contain_class('profile_webserver') }
  end
end
