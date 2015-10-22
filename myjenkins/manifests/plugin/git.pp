class myjenkins::plugin::git{

  jenkins::plugin{'git':
    #source    => 'file:///var/lib/jenkins/plugins-cache/git.hpi'
  }

  package {'git':
    ensure => 'installed'
  }
}