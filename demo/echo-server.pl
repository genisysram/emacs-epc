#!/usr/bin/perl

use RPC::EPC::Service;

sub echo_test {
    my $methods = {
        'echo' => sub {
            my $args = shift;
            return $args;
        },
        'add' => sub {
            my $args_ref = shift;
            my ($a,$b) = @$args_ref;
            return $a + $b;
        }
    };
    my $server = RPC::EPC::Service->new(8888, $methods);
    $server->start;
}

echo_test();

