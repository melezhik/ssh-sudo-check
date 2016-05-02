# SYNOPSIS

Connects to remote server by ssh and checks if user gets listed in \`sudoers' group. 

This effectively means user has a sudo access on this server.

# INSTALL

    $ sparrow plg install ssh-sudo-check


# USAGE


    $ sparrow project create cluster
    $ sparrow check add cluster check-sudoers
    $ sparrow check set cluster check-sudoers  ssh-sudo-check
    $ sparrow check ini cluster check-sudoers

    servers = 127.0.0.1,foo.bar.baz,192.168.0.0.1
    ssh_command = ssh -l foo -i ~/my_key.pem 

    users = foo,bar,superuser

    # this is the name of `sudoers' group
    # change this to something different to match your requirements
    # f.e. sudo_group = wheel
    sudo_group = sudo

    $ sparrow check run cluster check-sudoers

# Setting parameters on runtime

    $ sparrow check run cluster check-sudoers --param servers=192.168.0.1,192.168.0.2 --param users=foo,bar --param sudo_group=wheel
 
# AUTHOR

[Alexey Melezhik](mailto:melezhik@gmail.com)
