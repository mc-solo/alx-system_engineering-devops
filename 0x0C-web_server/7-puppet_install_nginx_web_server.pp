# Setup New Ubuntu server with nginx

exec { 'update system':
        command => '/usr/bin/apt-get update',
}

package { 'nginx':
	ensure => 'installed',
	require => Exec['update system']
}

file {'/var/www/html/index.html':
	content => 'Hello World!'
}

exec {'redirect_me':
	command => 'sed -i "24i",
	provider => 'shell'
}

service {'nginx':
	ensure => running,
	require => Package['nginx']
}
