require 'spec_helper'
describe 'lampstack' do
  context 'with default values for all parameters' do
    it { should contain_class('lampstack') }
  end
end
