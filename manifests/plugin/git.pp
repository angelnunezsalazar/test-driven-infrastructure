class myjenkins::plugin::git{

  $git_plugin = {
    'git'       => { version    => '2.4.0'},
    'git-client'    => { version    => '1.18.0'},
    'scm-api'     => { version    => '0.2'},

  }
  create_resources(::jenkins::plugin,$git_plugin)

  package {'git':
    ensure => 'installed'
  }
}