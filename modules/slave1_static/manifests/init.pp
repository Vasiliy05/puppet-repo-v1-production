class slave1_static {

 package { 'httpd':
  ensure => latest,
 }

 file {'/var/www/html/index.html':
  ensure => file,
  source => 'puppet:///modules/slave1_static/index.html'
 }

 service { 'httpd':
  ensure => running,
  enable => true,
 }

 service { 'firewalld':
  ensure => stopped,
  enable => false,
 }

 file {'/root/README':
  ensure => absent,
 }
}