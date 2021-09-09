class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHsGG+vJZMwRfAU3kb8L6BVlUj6p1Tj2Yf35g4+pTgkXkFSlwSdiwgANTldl5m7wvjc4xkZk76Bj4OLcOYBwKlwGLo3uE/CZeOJGt3WMdfDDx6It4sRSSQvdN0c0vdCslMxkqN8WcaDNLgpTZBBk10wszmJtQc/gftfIxzTz/KL/cO0spc+Gz9bIMXaQSEQxKoJ6/S2wAehAUl0KJ5+K9jsr+iOMgQlt4j/pt0/F2c235LweK+/9VQpDnLNFeIhwlomyTLCzBPpFiJHbUS/rec4aD5xm3aSIYRsr3yPW4fkl3DXCEbaf2Fxbn9vrnW/ptnP8PcwQOkMbQXPimKi7nf',
	}  
}
