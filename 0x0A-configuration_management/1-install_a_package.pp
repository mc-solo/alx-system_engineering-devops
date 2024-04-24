#install flask from pip3 3 using exec resource type

exec {'install flask':
  require => Exec['check-python'],
  command => '/usr/bin/pip3 install flask==2.1.0',
}

exec {'check-python':
  command => '/usr/bin/which python3',
}

