# kill a process called killmenow if it exists

exec {'kill-killmenow':
  command  => '/usr/bin/ pkill killmenow',
  unless   => '/usr/bin/pgrep -f killmenow',
  provider => 'shell'
}


