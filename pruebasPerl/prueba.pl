#!/usr/bin/perl -w
use strict;
use warnings;
use v5.10.1;

use MyModule;

#Ejemplo meter parametro por teclado.
#print "enter a number > \n";
#my $entrada = <STDIN>;
##chomp (my $entrada = <STDIN>);
#print "$entrada";

#Arrays
my @animals = ("perro", "gato");

print "num elementos array animales: ", scalar(@animals), "\n"; #tam array
print "elems array animales: ", @animals, "\n"; #tam array

#Acceso elemento array
print "animal en pos 1: ", $animals[1], "\n";

#Hashes
my %fruit_color = ("apple", "red", "banana", "yellow", "strawberry", "pinky", "kiwi", "green"); #Los guarda en el orden que lo lee
#or
my %fruit_color2 = ("apple" => "red", "banana" => "yellow", "strawberry" =>"pinky", "kiwi" => "green"); #los guarda como quiere cada vez
print ("Futas1: ", %fruit_color, "\n");
print ("Futas2: ", %fruit_color2, "\n");

#Acceso elemento hash
print "Color de banana: ", $fruit_color2{banana}, "\n";

my @fruits = keys %fruit_color;
my @fruits2 = keys %fruit_color2;

print "frutas: ", @fruits, "frutas2: ", @fruits2, "\n";

##Con referencias
my $array_ref = \@fruits;
my $hash_ref = \%fruit_color;
#print "Referencia array frutas: ", $array_ref, "\n"; #puntero

print "Accediendo a fruta desde la referencia: ", $array_ref->[0], "\n";  ##para hash seria $hash_ref->{banana}

##Condiciones
print "We have no bananas\n\n" unless $fruit_color{bananas}; #unless $fruit_color{banana} no imprimiria nada

for my $element (@fruits) {
  say $element;
}
##mas bucles...
#say "MAP SAY: ";
#map {say} @fruits;

#print for @fruits;  #<---

#say $hash_ref->{$_} for keys %$hash_ref;  #keys %fruit_color tambien vale

#say "Valores apuntados por hash_ref: ", %$hash_ref;

#say $fruit_color{$_} for keys %fruit_color;

##FILES
# For reading:
open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";
open(my $out, ">", "out.txt") or die "Can't open out.txt: $!";  #Para escribir se puede abrir sin que este creado y lo crea

my $line  = <$in>;  #Guarda una linea
my @lines = <$in>;  #Guarda todo el fichero (aqui la primera palabra no porque ya la ha leido)

print $out @lines;

##Subrutinas
sub logger {
  my @logmessage = @_; #shift coge el primer parametro que recibe. Tambien vale @_ para mas parametros
  say for @logmessage;

  open my $logfile, ">", "my.log" or die "Could not open my.log: $!";

  print $logfile @logmessage;
}

# Now we can use the subroutine just as any other built-in function:

logger("We have a logger subroutine!", "otro parametro");

#hacer el import con el nombre del fichero -> use MyModule
my $string = "    melocotones y Peras     ";
my $otra_string = MyModule::trim($string);

say $otra_string, "->fin sin espacios";

## OBJETOS

#my $self = {count => 0};
#say "self=", $self;

use MyCounter;
my $counter = MyCounter->new;
print $counter->count, "\n"; # 0
$counter->increment;
print $counter->count, "\n"; # 1

#cadenas

my $string = "This is a test";
substr($string, 8, 0, "not a ");

say $string;