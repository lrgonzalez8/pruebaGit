package MyCounter;
use strict;
use warnings;

sub new {
  my $class = shift;
  print "class: ", $class, "\n";
  my $self = {count => 0};
  return bless $self, $class;  #Hace que el objeto sepa a que clase pertenece
}

sub count {
  my $self = shift;
  print "self en count: ", $self, "\n";
  return $self->{count};
}

sub increment {
  my $self = shift;
  $self->{count}++;
}

1;