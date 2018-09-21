class saslauth::install (
	$saslauth_packages = hiera('saslauth_packages'),
	) {

		#include saslauth::service

		$saslauth_packages.each |String $package|{
		package { "$package":
		ensure  =>  installed,
		}
	}
}
