require 'spec_helper'
describe 'profile_appserver' do
  context 'with default values for all parameters' do
    it { should contain_class('profile_appserver') }
  end
end
