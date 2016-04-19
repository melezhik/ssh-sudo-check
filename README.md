# SYNOPSIS

Connects to remote server by ssh and checks if user gets listed in \`sudo' group. 

This effectively means user has a sudo access on this server.

# INSTALL

    $ sparrow plg install ssh-sudo-check


# USAGE


    $ sparrow project create cluster
    $ sparrow check add cluster check-sudo-bash
    $ sparrow check set cluster check-sudo-bash ssh-sudo-try
    $ sparrow check ini cluster check-sudo-bash 

    [main]

    servers = 127.0.0.1 foo.bar.baz,192.168.0.0.1
    ssh_command = ssh -l foo -i ~/my_key.pem 

    users = foo,bar,superuser

    # this is the name of sudo group
    # change this to something different to match your requirements
    # f.e. sudo_group = wheel
    sudo_group = sudo

    $ sparrow check run cluster check-sudo-check

# Setting parameters on runtime

    $ sparrow check run cluster check-sudo-check --param main.servers=192.168.0.1,192.168.0.2 --param main.users=foo,bar
 
# AUTHOR

[Alexey Melezhik](mailto:melezhik@gmail.com)
