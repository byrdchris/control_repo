node default {
}
node 'pm01.evilkittens.com' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
    }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
