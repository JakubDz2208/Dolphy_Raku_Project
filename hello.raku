my $prog = "my a = 19; say a;";

grammar Dolphy {
    rule TOP {
        <statement>*
    }

    rule statement {
        | <var-decl> 
        | <print-st>
    }
    rule var-decl {
        'my' <variable> '=' <integer> ';'
    }
    rule print-st {
        'say' <variable> ';' 
    }
    token variable {
        \w+
    }
    token integer {
        | \d+
        | '-' \d+ 

    }
}

class Actions {
    has %!var;
    method var-decl($/) {
        say "Variable declaration";
        %!var{~$<variable>} = +$<integer>;
    }

    method print-st($/) {
        say "Want to print";
        say %!var{$<variable>};
    }
}

say Dolphy.parse($prog, :actions(Actions.new));