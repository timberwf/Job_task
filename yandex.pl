use strict;
while (my $i = <>)
{
my $i1=$i;
$i1=~/\uFrom\s+(.*?)\s+/;
	if (defined $1)
		{
		 open(FFF,">> $1.mailbox");
		}
$i=~/\uFrom\s+(.*?)\uFrom\s+/;
print (FFF "$i");
}
close (FFF);