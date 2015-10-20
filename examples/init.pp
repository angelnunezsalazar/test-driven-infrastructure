$plugins = {
  'htmlpublisher' => { version    => '1.4'},
}
class { 'myjenkins':
  plugins => $plugins
}