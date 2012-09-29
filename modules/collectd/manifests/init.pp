class collectd {
  package { 'collectd.x86_64':
    ensure  => latest,
    require => Class['epel'],
  }

  package { 'collectd-rrdtool':
    ensure  => latest,
    require => Package['collectd.x86_64'],
    notify  => Service['collectd'],
  }

  file { 'collectd_swap':
    ensure  => file,
    path    => '/etc/collectd.d/swap.conf',
    content => "LoadPlugin swap\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['collectd.x86_64'],
    notify  => Service['collectd'],
  }

  service { 'collectd':
    ensure  => running,
    require => Package['collectd.x86_64'],
  }

  file{'/etc/collectd.conf':
     source => 'puppet:///modules/collectd/collectd.conf',
     owner => 'root',
     group => 'root'
  }
}

