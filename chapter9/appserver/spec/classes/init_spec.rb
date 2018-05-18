require 'spec_helper'
describe 'appserver' do
  context 'with default values for all parameters' do
    it { should contain_class('appserver') }
  end
end
