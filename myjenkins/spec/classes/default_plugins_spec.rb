require 'spec_helper'

describe 'myjenkins' do

  context 'default plugins' do
    it { should contain_jenkins__plugin('greenballs')}
  end

  context 'git plugin' do
    it { should contain_jenkins__plugin('git')}
    it { should contain_package('git')}
  end
end