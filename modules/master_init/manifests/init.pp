 class master_init {
 
 selinux::port { 'non-standard-http-port':
    ensure   => 'present',
    seltype  => 'http_port_t',
    protocol => 'tcp',
    port     => 8081,
 }
 
 selinux::boolean { 'httpd_can_network_connect':
   ensure => 'on',
 }
 
 include nginx
  
 nginx::resource::server { 'static':
   listen_port => 8080,
   proxy       => 'http://192.168.50.10',
 }

 nginx::resource::server { 'dynamic':
   listen_port => 8081,
   proxy       => 'http://192.168.50.20',
 }
}