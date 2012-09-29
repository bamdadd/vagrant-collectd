class epel{
  file{'/etc/yum.repos.d/epel.repo':
     source => 'puppet:///modules/epel/epel.repo'
  }
  file{'/etc/yum.repos.d/epel-testing.repo':
     source => 'puppet:///modules/epel/epel-testing.repo'
  }
}