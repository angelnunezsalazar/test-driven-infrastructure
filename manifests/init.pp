class myjenkins(
  $plugins = undef
){

  include jenkins
  include myjenkins::default_plugins

  if ($plugins){
    jenkins::plugin { $plugins: }
  }
}
