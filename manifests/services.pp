class saslauth::services  {
        service { 'saslauthd':
          ensure  => running,
          enable  => true,
          restart => 'systemctl restart saslauthd',
    }
}
