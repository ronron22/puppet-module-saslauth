class saslauth::config (
	$nodename = hiera('nodename'),
	) inherits saslauth {

	#include saslauth::service

	file { '/etc/saslauthd.conf':
		ensure  => present,
		content => file("saslauth/${nodename}/etc/saslauthd.conf"),
		notify => Service['saslauthd'],
		backup => 'true',
	}
	file { '/etc/default/saslauthd':
		ensure  => present,
		content => file("saslauth/${nodename}/etc/default/saslauthd"),
		notify => Service['saslauthd'],
		backup => 'true',
	}
}
