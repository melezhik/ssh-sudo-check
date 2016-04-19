my $ssh_command = config()->{main}->{ssh_command};
my $sudo_group = config()->{main}->{sudo_group};

my $server = story_var('server');

set_stdout('ssh_begin');

my $command = "$ssh_command $server grep $sudo_group /etc/group 2>\&1; echo status: \$?";

set_stdout($command);

for my $l (split /\n/, `$command`){
  set_stdout($l);
}

set_stdout('ssh_end');

