class myjenkins::plugin::gradle{
  class { 'gradle':
    version => '2.7',
  }
}