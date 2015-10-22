class myjenkins::plugin::git{

  jenkins::plugin{'git':}

  package {'git':
    ensure => 'installed'
  }
}