#Changes the configuration of the ssh client.
exec {'Append to ssh config.':
command  => '/bin/echo "IdentityFile ~/.ssh/holberton
PasswordAuthentication No" >> /etc/ssh/sshd_config'
}
