# using Puppet to make changes to our configuration file

file_line {'Change File'
path   => '/etc/ssh/ssh_config',
ensure => 'present',
line   => 'IdentityFile ~/.ssh/school',
match  => '#   IdentityFile ~/.ssh/id_rsa',
}

file_line {'Change File'
path   => '/etc/ssh/ssh_config',
ensure => 'present',
line   => 'PasswordAuthentication yes',
match  => '#   PasswordAuthentication no',
}
