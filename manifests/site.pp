node default {
}
node 'pm01.evilkittens.com' {
  include role::master_server
}
node /^puppet/ {
  include role app::app_server
}
