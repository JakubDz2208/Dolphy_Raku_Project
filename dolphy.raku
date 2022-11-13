use lib '.';
use Dolphygrammar;


my $file = @*ARGS[0];

my $code = $file.IO.slurp();


Dolphy.parse($code, :actions(Actions));

