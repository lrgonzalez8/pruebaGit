#Ejercicio 1 C wiki: https://en.wikibooks.org/wiki/Perl_Programming/Exercise_1

#Write a function to calculate the roots of a Quadratic equation, 
#where you give the coefficients a,b,c to the function, and it returns both the values of x

#!/usr/bin/perl -w
use strict;
use warnings;
use v5.10.1;


# Buscar elemento en tabla hash

my $NUM = 100;
my $MAXINT = 5000;
my %hash;

srand();

print "Numeros generados:\n(";

for my $i (1 .. $NUM) {
	my $valueToInsert = sprintf("%d", rand(1) * $MAXINT);
	$hash{$valueToInsert} = 0;
	say $valueToInsert;
	print ", " unless($i == $NUM);
}
print ")\n\n";

say "hash es: ", %hash;

print "Introduce numero para buscar >>";
my $toSearch = <STDIN>;

if (exists($hash{$toSearch})){
	say $toSearch, "encontrado";
}else{
	say $toSearch, "no encontrado";
}
