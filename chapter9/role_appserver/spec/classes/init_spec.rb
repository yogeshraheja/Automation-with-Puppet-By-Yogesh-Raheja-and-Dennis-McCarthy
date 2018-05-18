require 'spec_helper'
describe 'role_appserver' do
  context 'with default values for all parameters' do
    it { should contain_class('role_appserver') }
  end
end
