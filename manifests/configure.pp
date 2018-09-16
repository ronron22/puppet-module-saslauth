class saslauth::configure (
    $nodename = hiera('nodename'),
    ) {

    include saslauth::services

    file { '/etc/saslauthd.conf':
     ensure  => present,
     content => file("saslauth/${nodename}/etc/saslauthd.conf"),
     notify => Service['saslauthd'],
     backup => 'true',
    }
    file { '/etc/saslauthd/saslauthd':
     ensure  => present,
     content => file("saslauth/${nodename}/etc/default/saslauthd"),
     notify => Service['saslauthd'],
     backup => 'true',
    }
}
