#Changes the configuration of the ssh client.
include stdlib
file_line {'Declare identity file':
ensure => present,
path   => '/etc/ssh/sshd_config',
line   => 'IdentityFile ~/.ssh/holberton',
}
file_line {'Turn off passwd auth':
ensure => present,
path   => '/etc/ssh/sshd_config',
line   => 'PasswordAuthentication no',
match  => '^PasswordAuthentication',
replace => true
}
