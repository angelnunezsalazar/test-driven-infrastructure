require 'beaker-rspec/spec_helper'
require 'beaker-rspec/helpers/serverspec'

RSpec.configure do |c|
  # Module root
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
  # Fixtures directory
  fixture_modules = File.join(module_root, 'spec', 'fixtures', 'modules')
 
  # Readable test descriptions
  c.formatter = :documentation
 
  # Configure all nodes in nodeset
  c.before :suite do
    hosts.each do |host|
      # Install this module
      copy_module_to(host, :source => module_root,
                           :target_module_path => '/etc/puppet/modules/',
                           :module_name => 'myjenkins')
      # copies all the module dependencies
      rsync_to(host ,fixture_modules, '/etc/puppet/modules/')
    end
  end
end