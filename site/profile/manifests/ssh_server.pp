class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIVadzZdJpgKRDhrR5T7TNeHQMziDy43SF5QIn3ZchXcjIBLs4q1weSn9gPBZqqoIPXKkLvW3KILbhWfsTkIsz1OVfPa/wIHdD6sEKVUtiTrGTk897AalA5H4pwmKqSbbLwcgbPcx7BKIoAf7Euw1D4FgjHtygiExkSk8PQh/QwmlFkUX10sEGacwmYCH5DybwklG1puzGdXMheT/ZRZZP+/Vf7pYzjM0NY+SPnjz3FStwWvZc6Jf28fvJ8mScybkUq8YRhVhRIpyGtD1RshFjxKDteVObIzGgUCCXoiUzYcVzQGiE9Mxxz7mBHeEIwISwq8KZQEcKCBpp74y5PjYH',
  }
}