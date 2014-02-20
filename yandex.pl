use strict;
while (my $i = <>)
{
#определяем имя ящика
my $i1=$i;
$i1=~/\uFrom\s+(.*?)\s+/;
	if (defined $1)
		{
		#Открываем файл на добавление, если нет, создаем новый
		 open(FFF,">> $1.mailbox");
		}
#определяем рабочую информацию
$i=~/\uFrom\s+(.*?)\uFrom\s+/;
print (FFF "$i");
}
close (FFF);