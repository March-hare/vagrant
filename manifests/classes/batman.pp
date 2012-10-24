class batman {
	package { batmand:
		ensure => installed,
		require => Exec['apt-update']
	}
	package { batctl:
		ensure => installed,
		require => Exec['apt-update']
	}
	file { "/etc/default/batmand":
		ensure => "file",
		replace => true,
		content => 'START_BATMAND="YES"
DEBUGLEVEL=0
INTERFACES="eth1"
DAEMON_OPTS="-d $DEBUGLEVEL $INTERFACES"',
		require => Package['batmand']
	}

}
