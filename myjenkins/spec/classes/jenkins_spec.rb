require 'spec_helper'

describe 'myjenkins' do
  context 'the catalog should at the very least compile' do
      it { should compile }
  end

  context 'the following subclass should be in the catalog' do
    it { should contain_class('jenkins')}
  end

  context 'aditional plugins' do
    let(:params){
      {
        :plugins => ['htmlpublisher']
      }
    }
    it { should contain_jenkins__plugin('htmlpublisher')}
  end
end