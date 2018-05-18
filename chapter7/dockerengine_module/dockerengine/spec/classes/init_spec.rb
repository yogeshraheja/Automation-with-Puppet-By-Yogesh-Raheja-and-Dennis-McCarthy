require 'spec_helper'
describe 'dockerengine' do
  context 'with default values for all parameters' do
    it { should contain_class('dockerengine') }
  end
end
