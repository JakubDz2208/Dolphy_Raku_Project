my %var;

grammar Dolphy {
    rule TOP { 
        <statement>* %% ';'
    }
    
    rule statement {
        | <variable-declaration>
        | <assignment>
        | <function-call>
    }

    rule variable-declaration {
        'our' <variable-name>
    }

    rule assignment {
        <variable-name> '=' <value>
    }

    rule function-call {
        <function-name> <variable-name> 
    }

    token variable-name {
        \w+
    }

    token value {
        <[+-]>? [
            | <integer>
            | \d*? ['.' <integer>]
        ]
    }


    token integer {
        \d+ 
        {
            my $n = 0;
            $n = +<integer>;
        }
    }

    token function-name {
        [
            | out
            | print
        ]

    }

}

class Actions {
    method variable-declaration($/) {%var{~$<variable-name>} = 0;}

    method assignment($/) {%var{~$<variable-name>} = +$<value>;}
    
    method function-call($/) {
        say %var{~$<variable-name>}
            if $<function-name> eq 'out';
        say %var{~$<variable-name>}
            if $<function-name> eq 'print';
    }
}