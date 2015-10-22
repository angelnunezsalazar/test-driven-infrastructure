class myjenkins::default_plugins{
  #$default_plugins = {
  #  'greenballs'       => { source    => 'file:///var/lib/jenkins/plugins-cache/greenballs.hpi'}
  #}

  #create_resources(jenkins::plugin,$default_plugins)

  $default_plugins = ['greenballs']

  jenkins::plugin{$default_plugins:
    #source    => 'file:///var/lib/jenkins/plugins-cache/git.hpi'
  }

  contain myjenkins::plugin::git
  #contain myjenkins::plugin::gradle
}