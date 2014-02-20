use strict;
my %fff;
while (my $i = <>) {
my $i1=$i;
$i1=~/\uFrom\s+(.*?)\s+/;
my $der = $1;
	if (defined $der)
		{
		 open($fff{$der},">> $der.mailbox");
		 select $fff{$der};
		}
print $i;
}