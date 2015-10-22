$plugins =['chucknorris']
class {'myjenkins':
  plugins => $plugins
}