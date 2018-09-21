class saslauth::service  {
	service { 'saslauthd':
	ensure  => running,
	enable  => true,
	restart => 'systemctl restart saslauthd',
	}
}
