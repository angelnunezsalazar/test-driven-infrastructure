class myjenkins::default_plugins{
  $default_plugins = ['greenballs']

  jenkins::plugin{$default_plugins:}

  contain myjenkins::plugin::git
  #contain myjenkins::plugin::gradle
}