class saslauth::install (
	$saslauth_packages = hiera('saslauth_packages'),
	) inherits saslauth {

		#include saslauth::service

		$saslauth_packages.each |String $package|{
		package { "$package":
		ensure  =>  installed,
		}
	}
}
