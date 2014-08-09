
node default {

  notify {"::$fqdn": }


  yumrepo { 'epel':
    descr          => 'Extra Packages for Enterprise Linux 6 - x86_64',
    enabled        => '1',
    failovermethod => 'priority',
    gpgcheck       => '0',
    gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
    mirrorlist     => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=x86_64',
  }

  package {'ruby-devel': ensure  => installed }
  package {'rpm-build': ensure   => installed }
  package {'rpmdevtools': ensure => installed }

  package { 'rubygem-fpm':
    ensure => '1.2.0-1',
  }

  package { 'python-devel':
    ensure => '2.6.6-52.el6',
  }
  package { 'libtool':
    ensure => '2.2.6-15.5.el6',
  }
  package { 'autoconf':
    ensure => '2.63-5.1.el6',
  }
  package { 'cppunit-devel':
    ensure => '1.12.1-3.1.el6',
  }

  package { 'python-pip':
    ensure => '1.3.1-4.el6',
  }







}


