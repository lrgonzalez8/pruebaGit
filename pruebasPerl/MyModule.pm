package MyModule;
use strict;
use warnings;

sub trim { #Quita los espacios de delante y detras
  my $string = shift;
  $string =~ s/^\s+//; #Ppio de la linea. s/ sustituye
  $string =~ s/\s+$//;
  return $string;
}

1;