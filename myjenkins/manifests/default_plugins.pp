class myjenkins::default_plugins{
  $default_plugins = ['greenballs']

  jenkins::plugin{$default_plugins:}

  package{'git':
    ensure=> installed
  }

  jenkins::plugin{'git':}
}