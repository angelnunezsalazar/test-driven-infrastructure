require 'rubygems'
require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.default_facts = {
    :operatingsystem    => 'Ubuntu', 
    :operatingsystemrelease => '14.04',
    :osfamily         => 'Debian', 
    :lsbdistcodename    => 'trusty',
    :lsbdistid        => 'ubuntu',
    :concat_basedir     => '/tmp',
    :path     => '/usr/local/bin/'
  }
end