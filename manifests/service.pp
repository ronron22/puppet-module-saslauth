class saslauth::service inherits saslauth {
	service { 'saslauthd':
	ensure  => running,
	enable  => true,
	restart => 'systemctl restart saslauthd',
	}
}
