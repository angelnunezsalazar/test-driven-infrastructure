require 'spec_helper_acceptance'

describe 'jenkins class' do

  context 'default parameters' do
    it 'should should run successfully' do
      pp = "include myjenkins"

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    describe service('jenkins') do
      it { should be_enabled }
    end

    context 'git default plugin' do
      describe file('/var/lib/jenkins/plugins/git.hpi') do
        it { should be_file }
      end

      describe package('git') do
        it { is_expected.to be_installed }
      end
    end
  end
end