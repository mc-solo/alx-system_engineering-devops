# create a file and set permissions to it
file {'/tmp/school' :
  ensure => present,
  content => 'I love Puppet'
  mode => '0744'
  owner => 'www-data'
  group => 'www-data'
}

