class myjenkins::default_plugins{
  $default_plugins = {
    'greenballs' => { version    => '1.14'},
  }
  create_resources(::jenkins::plugin,$default_plugins)

  contain myjenkins::plugin::git
}