package Parse::RecDescent::DDL::SQLT::Access;
use Parse::RecDescent;

{ my $ERRORS;


package Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access;
use strict;
use vars qw($skip $AUTOLOAD  );
@Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::ISA = ();
$skip = '\s*';

    my ( %tables, $table_order, @table_comments );
;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::AUTOLOAD   = sub
{
    no strict 'refs';
    $AUTOLOAD =~ s/^Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access/Parse::RecDescent/;
    goto &{$AUTOLOAD};
}
}

push @Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::auto_inc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"auto_inc"};
    
    Parse::RecDescent::_trace(q{Trying rule: [auto_inc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{auto_inc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/auto_increment/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/auto_increment/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{auto_inc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{auto_inc});
        %item = (__RULE__ => q{auto_inc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/auto_increment/i]}, Parse::RecDescent::_tracefirst($text),
                      q{auto_inc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:auto_increment)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{auto_inc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 1 };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/auto_increment/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{auto_inc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{auto_inc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{auto_inc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{auto_inc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{auto_inc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::reference_definition
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"reference_definition"};
    
    Parse::RecDescent::_trace(q{Trying rule: [reference_definition]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{reference_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/references/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/references/i table_name parens_field_list match_type on_delete on_update]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{reference_definition});
        %item = (__RULE__ => q{reference_definition});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/references/i]}, Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:references)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [table_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{reference_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{table_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::table_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [table_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{reference_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [table_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{table_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [parens_field_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{reference_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{parens_field_list})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::parens_field_list, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [parens_field_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{reference_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [parens_field_list]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{parens_field_list(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [match_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{reference_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{match_type})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::match_type, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [match_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{reference_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [match_type]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{match_type(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [on_delete]},
                  Parse::RecDescent::_tracefirst($text),
                  q{reference_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{on_delete})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::on_delete, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [on_delete]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{reference_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [on_delete]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{on_delete(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [on_update]},
                  Parse::RecDescent::_tracefirst($text),
                  q{reference_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{on_update})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::on_update, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [on_update]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{reference_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [on_update]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{on_update(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
            type             => 'foreign_key',
            reference_table  => $item[2],
            reference_fields => $item[3][0],
            match_type       => $item[4][0],
            on_delete        => $item[5][0],
            on_update        => $item[6][0],
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/references/i table_name parens_field_list match_type on_delete on_update]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{reference_definition},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{reference_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{reference_definition},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{reference_definition},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::NAME
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"NAME"};
    
    Parse::RecDescent::_trace(q{Trying rule: [NAME]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{NAME},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'`', or /\\w+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['`' /\\w+/ '`']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{NAME});
        %item = (__RULE__ => q{NAME});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['`']},
                      Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "`"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/\\w+/]}, Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/\\w+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\w+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: ['`']},
                      Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'`'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "`"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['`' /\\w+/ '`']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\w+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{NAME});
        %item = (__RULE__ => q{NAME});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\w+/]}, Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\w+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/\\w+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{NAME},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{NAME},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{NAME},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{NAME},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::primary_key_def
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"primary_key_def"};
    
    Parse::RecDescent::_trace(q{Trying rule: [primary_key_def]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{primary_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{primary_key});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [primary_key index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{primary_key_def});
        %item = (__RULE__ => q{primary_key_def});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [primary_key]},
                  Parse::RecDescent::_tracefirst($text),
                  q{primary_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::primary_key($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [primary_key]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{primary_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [primary_key]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{primary_key}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [index_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{primary_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{index_name})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index_name, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [index_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{primary_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [index_name]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{index_name(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{primary_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: name_with_opt_paren /,/ name_with_opt_paren>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{primary_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{primary_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'name_with_opt_paren(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{primary_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{primary_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{primary_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'name_with_opt_paren(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return       = {
            supertype => 'constraint',
            name      => $item{'index_name(?)'}[0],
            type      => 'primary_key',
            fields    => $item[4],
        };
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [primary_key index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{primary_key_def},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{primary_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{primary_key_def},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{primary_key_def},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::COMMA
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"COMMA"};
    
    Parse::RecDescent::_trace(q{Trying rule: [COMMA]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{COMMA},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{','});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [',']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{COMMA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{COMMA});
        %item = (__RULE__ => q{COMMA});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [',']},
                      Parse::RecDescent::_tracefirst($text),
                      q{COMMA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\,/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [',']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{COMMA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{COMMA},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{COMMA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{COMMA},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{COMMA},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::match_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"match_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [match_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{match_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/match full/i, or /match partial/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/match full/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{match_type});
        %item = (__RULE__ => q{match_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/match full/i]}, Parse::RecDescent::_tracefirst($text),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:match full)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 'full' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/match full/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/match partial/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{match_type});
        %item = (__RULE__ => q{match_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/match partial/i]}, Parse::RecDescent::_tracefirst($text),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:match partial)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 'partial' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/match partial/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{match_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{match_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{match_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{match_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"index"};
    
    Parse::RecDescent::_trace(q{Trying rule: [index]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{index},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{normal_index, or fulltext_index});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [normal_index]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{index});
        %item = (__RULE__ => q{index});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [normal_index]},
                  Parse::RecDescent::_tracefirst($text),
                  q{index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::normal_index($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [normal_index]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [normal_index]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{normal_index}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [normal_index]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [fulltext_index]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{index});
        %item = (__RULE__ => q{index});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [fulltext_index]},
                  Parse::RecDescent::_tracefirst($text),
                  q{index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::fulltext_index($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [fulltext_index]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [fulltext_index]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{fulltext_index}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [fulltext_index]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        
        my $_savetext;
        @item = (q{index});
        %item = (__RULE__ => q{index});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{index},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{index},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{index},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::type_qualifier
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"type_qualifier"};
    
    Parse::RecDescent::_trace(q{Trying rule: [type_qualifier]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{type_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/(BINARY|UNSIGNED|ZEROFILL)/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/(BINARY|UNSIGNED|ZEROFILL)/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{type_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{type_qualifier});
        %item = (__RULE__ => q{type_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/(BINARY|UNSIGNED|ZEROFILL)/i]}, Parse::RecDescent::_tracefirst($text),
                      q{type_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(BINARY|UNSIGNED|ZEROFILL))/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{type_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { lc $item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/(BINARY|UNSIGNED|ZEROFILL)/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{type_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{type_qualifier},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{type_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{type_qualifier},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{type_qualifier},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::table_name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"table_name"};
    
    Parse::RecDescent::_trace(q{Trying rule: [table_name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{table_name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NAME});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NAME]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{table_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{table_name});
        %item = (__RULE__ => q{table_name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NAME]},
                  Parse::RecDescent::_tracefirst($text),
                  q{table_name},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::NAME($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NAME]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{table_name},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NAME]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{table_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NAME}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [NAME]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{table_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{table_name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{table_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{table_name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{table_name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"field_name"};
    
    Parse::RecDescent::_trace(q{Trying rule: [field_name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{field_name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NAME});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NAME]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_name});
        %item = (__RULE__ => q{field_name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NAME]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_name},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::NAME($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NAME]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_name},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NAME]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NAME}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [NAME]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{field_name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{field_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{field_name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{field_name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::use
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"use"};
    
    Parse::RecDescent::_trace(q{Trying rule: [use]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{use},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/use/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/use/i WORD ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{use});
        %item = (__RULE__ => q{use});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/use/i]}, Parse::RecDescent::_tracefirst($text),
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:use)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{use},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{WORD})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{use},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { @table_comments = () };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/use/i WORD ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{use},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{use},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{use},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{use},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::CREATE
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"CREATE"};
    
    Parse::RecDescent::_trace(q{Trying rule: [CREATE]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{CREATE},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/create/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/create/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{CREATE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{CREATE});
        %item = (__RULE__ => q{CREATE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/create/i]}, Parse::RecDescent::_tracefirst($text),
                      q{CREATE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:create)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/create/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{CREATE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{CREATE},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{CREATE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{CREATE},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{CREATE},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::eofile
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"eofile"};
    
    Parse::RecDescent::_trace(q{Trying rule: [eofile]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{eofile},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^\\Z/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^\\Z/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{eofile});
        %item = (__RULE__ => q{eofile});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^\\Z/]}, Parse::RecDescent::_tracefirst($text),
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\Z)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/^\\Z/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{eofile},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{eofile},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{eofile},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{eofile},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::unique_key_def
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"unique_key_def"};
    
    Parse::RecDescent::_trace(q{Trying rule: [unique_key_def]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{UNIQUE});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [UNIQUE KEY index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{unique_key_def});
        %item = (__RULE__ => q{unique_key_def});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [UNIQUE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::UNIQUE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [UNIQUE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{unique_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [UNIQUE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{UNIQUE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [KEY]},
                  Parse::RecDescent::_tracefirst($text),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{KEY})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::KEY, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [KEY]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{unique_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [KEY]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KEY(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [index_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{index_name})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index_name, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [index_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{unique_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [index_name]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{index_name(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: name_with_opt_paren /,/ name_with_opt_paren>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{unique_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'name_with_opt_paren(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{unique_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{unique_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{unique_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'name_with_opt_paren(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return       = {
            supertype => 'constraint',
            name      => $item{'index_name(?)'}[0],
            type      => 'unique',
            fields    => $item[5],
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [UNIQUE KEY index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{unique_key_def},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{unique_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{unique_key_def},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{unique_key_def},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::TABLE
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TABLE"};
    
    Parse::RecDescent::_trace(q{Trying rule: [TABLE]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{TABLE},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/table/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/table/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{TABLE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TABLE});
        %item = (__RULE__ => q{TABLE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/table/i]}, Parse::RecDescent::_tracefirst($text),
                      q{TABLE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:table)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/table/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{TABLE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{TABLE},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{TABLE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{TABLE},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{TABLE},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::foreign_key_def
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"foreign_key_def"};
    
    Parse::RecDescent::_trace(q{Trying rule: [foreign_key_def]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{foreign_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{foreign_key_def_begin});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [foreign_key_def_begin parens_field_list reference_definition]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{foreign_key_def});
        %item = (__RULE__ => q{foreign_key_def});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [foreign_key_def_begin]},
                  Parse::RecDescent::_tracefirst($text),
                  q{foreign_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::foreign_key_def_begin($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [foreign_key_def_begin]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{foreign_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [foreign_key_def_begin]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{foreign_key_def_begin}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [parens_field_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{foreign_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{parens_field_list})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::parens_field_list($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [parens_field_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{foreign_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [parens_field_list]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{parens_field_list}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [reference_definition]},
                  Parse::RecDescent::_tracefirst($text),
                  q{foreign_key_def},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{reference_definition})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::reference_definition($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [reference_definition]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{foreign_key_def},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [reference_definition]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reference_definition}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return              =  {
            supertype        => 'constraint',
            type             => 'foreign_key',
            name             => $item[1],
            fields           => $item[2],
            %{ $item{'reference_definition'} },
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [foreign_key_def_begin parens_field_list reference_definition]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{foreign_key_def},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{foreign_key_def},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{foreign_key_def},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{foreign_key_def},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::data_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"data_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [data_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{access_data_type});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [access_data_type parens_value_list type_qualifier]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{data_type});
        %item = (__RULE__ => q{data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [access_data_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::access_data_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [access_data_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{data_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [access_data_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{access_data_type}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [parens_value_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{parens_value_list})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::parens_value_list, 0, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [parens_value_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{data_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [parens_value_list]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{parens_value_list(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [type_qualifier]},
                  Parse::RecDescent::_tracefirst($text),
                  q{data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{type_qualifier})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::type_qualifier, 0, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [type_qualifier]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{data_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [type_qualifier]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{type_qualifier(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return        = {
            type       => $item[1],
            size       => $item[2][0],
            qualifiers => $item[3],
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [access_data_type parens_value_list type_qualifier]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{data_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{data_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{data_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::fulltext_index
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"fulltext_index"};
    
    Parse::RecDescent::_trace(q{Trying rule: [fulltext_index]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{fulltext_index},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/fulltext/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/fulltext/i KEY index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{fulltext_index});
        %item = (__RULE__ => q{fulltext_index});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/fulltext/i]}, Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:fulltext)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [KEY]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fulltext_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{KEY})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::KEY, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [KEY]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fulltext_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [KEY]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KEY(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [index_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fulltext_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{index_name})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index_name, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [index_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fulltext_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [index_name]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{index_name(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fulltext_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: name_with_opt_paren /,/ name_with_opt_paren>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fulltext_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fulltext_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'name_with_opt_paren(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{fulltext_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fulltext_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{fulltext_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'name_with_opt_paren(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return       = {
            supertype => 'index',
            type      => 'fulltext',
            name      => $item{'index_name(?)'}[0],
            fields    => $item[5],
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/fulltext/i KEY index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{fulltext_index},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{fulltext_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{fulltext_index},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{fulltext_index},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::comment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"comment"};
    
    Parse::RecDescent::_trace(q{Trying rule: [comment]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{comment},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^\\s*--(.*)\\n/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^\\s*--(.*)\\n/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{comment});
        %item = (__RULE__ => q{comment});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^\\s*--(.*)\\n/]}, Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\s*--(.*)\n)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        my $comment =  $1;
        $return     = $comment;
        push @table_comments, $comment;
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/^\\s*--(.*)\\n/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{comment},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{comment},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{comment},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index_name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"index_name"};
    
    Parse::RecDescent::_trace(q{Trying rule: [index_name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{index_name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NAME});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NAME]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{index_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{index_name});
        %item = (__RULE__ => q{index_name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NAME]},
                  Parse::RecDescent::_tracefirst($text),
                  q{index_name},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::NAME($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NAME]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{index_name},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NAME]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{index_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NAME}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [NAME]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{index_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{index_name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{index_name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{index_name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{index_name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"name_with_opt_paren"};
    
    Parse::RecDescent::_trace(q{Trying rule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{name_with_opt_paren},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NAME});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NAME parens_value_list]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{name_with_opt_paren},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{name_with_opt_paren});
        %item = (__RULE__ => q{name_with_opt_paren});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NAME]},
                  Parse::RecDescent::_tracefirst($text),
                  q{name_with_opt_paren},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::NAME($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NAME]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{name_with_opt_paren},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NAME]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{name_with_opt_paren},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NAME}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [parens_value_list]},
                  Parse::RecDescent::_tracefirst($text),
                  q{name_with_opt_paren},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{parens_value_list})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::parens_value_list, 0, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [parens_value_list]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{name_with_opt_paren},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [parens_value_list]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{name_with_opt_paren},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{parens_value_list(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{name_with_opt_paren},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2][0] ? "$item[1]($item[2][0][0])" : $item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [NAME parens_value_list]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{name_with_opt_paren},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{name_with_opt_paren},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{name_with_opt_paren},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{name_with_opt_paren},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{name_with_opt_paren},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::drop
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"drop"};
    
    Parse::RecDescent::_trace(q{Trying rule: [drop]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{drop},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/drop/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/drop/i TABLE /[^;]+/ ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{drop});
        %item = (__RULE__ => q{drop});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/drop/i]}, Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:drop)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [TABLE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{drop},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{TABLE})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::TABLE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [TABLE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{drop},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [TABLE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TABLE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [/[^;]+/]}, Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/[^;]+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[^;]+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/drop/i TABLE /[^;]+/ ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/drop/i WORD ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{drop});
        %item = (__RULE__ => q{drop});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/drop/i]}, Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:drop)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{drop},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{WORD})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD, 1, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{drop},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WORD]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { @table_comments = () };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/drop/i WORD ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{drop},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{drop},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{drop},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{drop},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::not_null
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"not_null"};
    
    Parse::RecDescent::_trace(q{Trying rule: [not_null]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{not_null},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/not/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/not/i /null/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{not_null},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{not_null});
        %item = (__RULE__ => q{not_null});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/not/i]}, Parse::RecDescent::_tracefirst($text),
                      q{not_null},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:not)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/null/i]}, Parse::RecDescent::_tracefirst($text),
                      q{not_null},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/null/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:null)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{not_null},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 0 };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/not/i /null/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{not_null},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{not_null},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{not_null},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{not_null},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{not_null},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::create
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"create"};
    
    Parse::RecDescent::_trace(q{Trying rule: [create]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{CREATE});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [CREATE /database/i WORD ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{create});
        %item = (__RULE__ => q{create});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [CREATE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::CREATE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [CREATE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [CREATE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CREATE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [/database/i]}, Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/database/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:database)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{WORD})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { @table_comments = () };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [CREATE /database/i WORD ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [CREATE TABLE table_name '(' <leftop: create_definition /,/ create_definition> ')' ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{create});
        %item = (__RULE__ => q{create});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [CREATE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::CREATE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [CREATE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [CREATE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CREATE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [TABLE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{TABLE})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::TABLE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [TABLE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [TABLE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TABLE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [table_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{table_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::table_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [table_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [table_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{table_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: create_definition /,/ create_definition>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: create_definition /,/ create_definition>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [create_definition]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{create_definition})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::create_definition($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [create_definition]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [create_definition]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{create_definition}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'create_definition(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [create_definition]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{create_definition})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::create_definition($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [create_definition]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [create_definition]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{create_definition}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: create_definition /,/ create_definition>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: create_definition /,/ create_definition>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'create_definition(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING3__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        my $table_name                       = $item{'table_name'};
        $tables{ $table_name }{'order'}      = ++$table_order;
        $tables{ $table_name }{'table_name'} = $table_name;

        if ( @table_comments ) {
            $tables{ $table_name }{'comments'} = [ @table_comments ];
            @table_comments = ();
        }

        my $i = 1;
        for my $definition ( @{ $item[5] } ) {
            if ( $definition->{'supertype'} eq 'field' ) {
                my $field_name = $definition->{'name'};
                $tables{ $table_name }{'fields'}{ $field_name } =
                    { %$definition, order => $i };
                $i++;

                if ( $definition->{'is_primary_key'} ) {
                    push @{ $tables{ $table_name }{'constraints'} },
                        {
                            type   => 'primary_key',
                            fields => [ $field_name ],
                        }
                    ;
                }
            }
            elsif ( $definition->{'supertype'} eq 'constraint' ) {
                push @{ $tables{ $table_name }{'constraints'} }, $definition;
            }
            elsif ( $definition->{'supertype'} eq 'index' ) {
                push @{ $tables{ $table_name }{'indices'} }, $definition;
            }
        }

        1;
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [CREATE TABLE table_name '(' <leftop: create_definition /,/ create_definition> ')' ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [CREATE UNIQUE /(index|key)/i index_name /on/i table_name '(' <leftop: field_name /,/ field_name> ')' ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{create});
        %item = (__RULE__ => q{create});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [CREATE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::CREATE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [CREATE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [CREATE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CREATE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [UNIQUE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{UNIQUE})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::UNIQUE, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [UNIQUE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [UNIQUE]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{UNIQUE(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [/(index|key)/i]}, Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/(index|key)/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(index|key))/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [index_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{index_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [index_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [index_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{index_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [/on/i]}, Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/on/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:on)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [table_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{table_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::table_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [table_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [table_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{table_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: field_name /,/ field_name>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: field_name /,/ field_name>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{field_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN3__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'field_name(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{field_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: field_name /,/ field_name>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: field_name /,/ field_name>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'field_name(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING3__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        @table_comments = ();
        push @{ $tables{ $item{'table_name'} }{'indices'} },
            {
                name   => $item[4],
                type   => $item[2] ? 'unique' : 'normal',
                fields => $item[8],
            }
        ;
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [CREATE UNIQUE /(index|key)/i index_name /on/i table_name '(' <leftop: field_name /,/ field_name> ')' ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{create},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{create},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{create},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{create},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"WORD"};
    
    Parse::RecDescent::_trace(q{Trying rule: [WORD]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{WORD},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\w+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\w+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{WORD},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{WORD});
        %item = (__RULE__ => q{WORD});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\w+/]}, Parse::RecDescent::_tracefirst($text),
                      q{WORD},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\w+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/\\w+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{WORD},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{WORD},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{WORD},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{WORD},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{WORD},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::access_data_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"access_data_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [access_data_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{access_data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/long integer/i, or /text/i, or /datetime (\\(short\\))?/i, or /boolean/i, or WORD});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/long integer/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{access_data_type});
        %item = (__RULE__ => q{access_data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/long integer/i]}, Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:long integer)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 'Long Integer' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/long integer/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/text/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{access_data_type});
        %item = (__RULE__ => q{access_data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/text/i]}, Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:text)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 'Text' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/text/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/datetime (\\(short\\))?/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{access_data_type});
        %item = (__RULE__ => q{access_data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/datetime (\\(short\\))?/i]}, Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:datetime (\(short\))?)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 'DateTime' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/datetime (\\(short\\))?/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/boolean/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{access_data_type});
        %item = (__RULE__ => q{access_data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/boolean/i]}, Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:boolean)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 'Boolean' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/boolean/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [WORD]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        $text = $_[1];
        my $_savetext;
        @item = (q{access_data_type});
        %item = (__RULE__ => q{access_data_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{access_data_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{access_data_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [WORD]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{access_data_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{access_data_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{access_data_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{access_data_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::VALUE
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"VALUE"};
    
    Parse::RecDescent::_trace(q{Trying rule: [VALUE]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{VALUE},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[-+]?\\.?\\d+(?:[eE]\\d+)?/, or /'.*?'/, or /NULL/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[-+]?\\.?\\d+(?:[eE]\\d+)?/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{VALUE});
        %item = (__RULE__ => q{VALUE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[-+]?\\.?\\d+(?:[eE]\\d+)?/]}, Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[-+]?\.?\d+(?:[eE]\d+)?)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/[-+]?\\.?\\d+(?:[eE]\\d+)?/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/'.*?'/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{VALUE});
        %item = (__RULE__ => q{VALUE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/'.*?'/]}, Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:'.*?')/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        # remove leading/trailing quotes
        my $val = $item[1];
        $val    =~ s/^['"]|['"]$//g;
        $return = $val;
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/'.*?'/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/NULL/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{VALUE});
        %item = (__RULE__ => q{VALUE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/NULL/]}, Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:NULL)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 'NULL' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/NULL/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{VALUE},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{VALUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{VALUE},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{VALUE},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::constraint
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"constraint"};
    
    Parse::RecDescent::_trace(q{Trying rule: [constraint]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{constraint},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{primary_key_def, or unique_key_def, or foreign_key_def});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [primary_key_def]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{constraint});
        %item = (__RULE__ => q{constraint});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [primary_key_def]},
                  Parse::RecDescent::_tracefirst($text),
                  q{constraint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::primary_key_def($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [primary_key_def]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{constraint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [primary_key_def]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{primary_key_def}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [primary_key_def]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [unique_key_def]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{constraint});
        %item = (__RULE__ => q{constraint});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [unique_key_def]},
                  Parse::RecDescent::_tracefirst($text),
                  q{constraint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::unique_key_def($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [unique_key_def]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{constraint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [unique_key_def]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{unique_key_def}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [unique_key_def]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [foreign_key_def]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{constraint});
        %item = (__RULE__ => q{constraint});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [foreign_key_def]},
                  Parse::RecDescent::_tracefirst($text),
                  q{constraint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::foreign_key_def($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [foreign_key_def]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{constraint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [foreign_key_def]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{foreign_key_def}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [foreign_key_def]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        
        my $_savetext;
        @item = (q{constraint});
        %item = (__RULE__ => q{constraint});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{constraint},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{constraint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{constraint},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{constraint},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::on_update
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"on_update"};
    
    Parse::RecDescent::_trace(q{Trying rule: [on_update]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{on_update},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/on update/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/on update/i reference_option]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{on_update},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{on_update});
        %item = (__RULE__ => q{on_update});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/on update/i]}, Parse::RecDescent::_tracefirst($text),
                      q{on_update},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:on update)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [reference_option]},
                  Parse::RecDescent::_tracefirst($text),
                  q{on_update},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{reference_option})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::reference_option($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [reference_option]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{on_update},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [reference_option]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{on_update},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reference_option}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{on_update},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/on update/i reference_option]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{on_update},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{on_update},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{on_update},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{on_update},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{on_update},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::table_option
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"table_option"};
    
    Parse::RecDescent::_trace(q{Trying rule: [table_option]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{table_option},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{WORD});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [WORD /\\s*=\\s*/ WORD]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{table_option});
        %item = (__RULE__ => q{table_option});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{table_option},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{table_option},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [/\\s*=\\s*/]}, Parse::RecDescent::_tracefirst($text),
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/\\s*=\\s*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\s*=\s*)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{table_option},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{WORD})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{table_option},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = { $item[1] => $item[3] };
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [WORD /\\s*=\\s*/ WORD]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{table_option},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{table_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{table_option},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{table_option},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::parens_value_list
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"parens_value_list"};
    
    Parse::RecDescent::_trace(q{Trying rule: [parens_value_list]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{parens_value_list},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' <leftop: VALUE /,/ VALUE> ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{parens_value_list});
        %item = (__RULE__ => q{parens_value_list});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: VALUE /,/ VALUE>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{parens_value_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: VALUE /,/ VALUE>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [VALUE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{parens_value_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{VALUE})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::VALUE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [VALUE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{parens_value_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [VALUE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{VALUE}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'VALUE(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [VALUE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{parens_value_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{VALUE})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::VALUE($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [VALUE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{parens_value_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [VALUE]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{VALUE}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: VALUE /,/ VALUE>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{parens_value_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: VALUE /,/ VALUE>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'VALUE(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['(' <leftop: VALUE /,/ VALUE> ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{parens_value_list},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{parens_value_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{parens_value_list},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{parens_value_list},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::normal_index
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"normal_index"};
    
    Parse::RecDescent::_trace(q{Trying rule: [normal_index]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{normal_index},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{KEY});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [KEY index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{normal_index});
        %item = (__RULE__ => q{normal_index});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [KEY]},
                  Parse::RecDescent::_tracefirst($text),
                  q{normal_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::KEY($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [KEY]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{normal_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [KEY]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KEY}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [index_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{normal_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{index_name})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index_name, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [index_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{normal_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [index_name]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{index_name(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{normal_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: name_with_opt_paren /,/ name_with_opt_paren>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{normal_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{normal_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'name_with_opt_paren(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [name_with_opt_paren]},
                  Parse::RecDescent::_tracefirst($text),
                  q{normal_index},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name_with_opt_paren})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::name_with_opt_paren($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name_with_opt_paren]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{normal_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name_with_opt_paren]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name_with_opt_paren}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{normal_index},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: name_with_opt_paren /,/ name_with_opt_paren>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'name_with_opt_paren(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return       = {
            supertype => 'index',
            type      => 'normal',
            name      => $item{'index_name(?)'}[0],
            fields    => $item[4],
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [KEY index_name '(' <leftop: name_with_opt_paren /,/ name_with_opt_paren> ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{normal_index},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{normal_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{normal_index},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{normal_index},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::set
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"set"};
    
    Parse::RecDescent::_trace(q{Trying rule: [set]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{set},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/set/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/set/i /[^;]+/ ';']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{set});
        %item = (__RULE__ => q{set});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/set/i]}, Parse::RecDescent::_tracefirst($text),
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:set)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/[^;]+/]}, Parse::RecDescent::_tracefirst($text),
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/[^;]+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[^;]+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { @table_comments = () };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/set/i /[^;]+/ ';']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{set},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{set},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{set},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{set},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_qualifier
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"field_qualifier"};
    
    Parse::RecDescent::_trace(q{Trying rule: [field_qualifier]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{not_null, or default_val, or auto_inc, or primary_key, or unsigned, or /character set/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [not_null]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_qualifier});
        %item = (__RULE__ => q{field_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [not_null]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::not_null($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [not_null]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_qualifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [not_null]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{not_null}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
             null => $item{'not_null'},
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [not_null]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [default_val]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_qualifier});
        %item = (__RULE__ => q{field_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [default_val]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::default_val($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [default_val]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_qualifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [default_val]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{default_val}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
             default => $item{'default_val'},
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [default_val]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [auto_inc]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_qualifier});
        %item = (__RULE__ => q{field_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [auto_inc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::auto_inc($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [auto_inc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_qualifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [auto_inc]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{auto_inc}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
             is_auto_inc => $item{'auto_inc'},
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [auto_inc]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [primary_key]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_qualifier});
        %item = (__RULE__ => q{field_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [primary_key]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::primary_key($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [primary_key]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_qualifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [primary_key]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{primary_key}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
             is_primary_key => $item{'primary_key'},
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [primary_key]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [unsigned]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_qualifier});
        %item = (__RULE__ => q{field_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [unsigned]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::unsigned($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [unsigned]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_qualifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [unsigned]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{unsigned}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
             is_unsigned => $item{'unsigned'},
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [unsigned]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/character set/i WORD]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[5];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_qualifier});
        %item = (__RULE__ => q{field_qualifier});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/character set/i]}, Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:character set)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_qualifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{WORD})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_qualifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
            character_set => $item[2],
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/character set/i WORD]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{field_qualifier},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{field_qualifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{field_qualifier},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{field_qualifier},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::on_delete
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"on_delete"};
    
    Parse::RecDescent::_trace(q{Trying rule: [on_delete]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{on_delete},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/on delete/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/on delete/i reference_option]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{on_delete},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{on_delete});
        %item = (__RULE__ => q{on_delete});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/on delete/i]}, Parse::RecDescent::_tracefirst($text),
                      q{on_delete},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:on delete)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [reference_option]},
                  Parse::RecDescent::_tracefirst($text),
                  q{on_delete},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{reference_option})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::reference_option($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [reference_option]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{on_delete},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [reference_option]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{on_delete},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reference_option}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{on_delete},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/on delete/i reference_option]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{on_delete},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{on_delete},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{on_delete},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{on_delete},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{on_delete},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::default_val
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"default_val"};
    
    Parse::RecDescent::_trace(q{Trying rule: [default_val]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{default_val},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/default/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/default/i /'(?:.*?\\')*.*?'|(?:')?[\\w\\d:.-]*(?:')?/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{default_val},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{default_val});
        %item = (__RULE__ => q{default_val});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/default/i]}, Parse::RecDescent::_tracefirst($text),
                      q{default_val},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:default)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/'(?:.*?\\')*.*?'|(?:')?[\\w\\d:.-]*(?:')?/]}, Parse::RecDescent::_tracefirst($text),
                      q{default_val},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/'(?:.*?\\')*.*?'|(?:')?[\\w\\d:.-]*(?:')?/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:'(?:.*?\')*.*?'|(?:')?[\w\d:.-]*(?:')?)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{default_val},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $item[2] =~ s/^\s*'|'\s*$//g;
        $return  =  $item[2];
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/default/i /'(?:.*?\\')*.*?'|(?:')?[\\w\\d:.-]*(?:')?/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{default_val},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{default_val},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{default_val},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{default_val},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{default_val},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::primary_key
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"primary_key"};
    
    Parse::RecDescent::_trace(q{Trying rule: [primary_key]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{primary_key},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/primary/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/primary/i /key/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{primary_key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{primary_key});
        %item = (__RULE__ => q{primary_key});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/primary/i]}, Parse::RecDescent::_tracefirst($text),
                      q{primary_key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:primary)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/key/i]}, Parse::RecDescent::_tracefirst($text),
                      q{primary_key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/key/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:key)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 1 };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/primary/i /key/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{primary_key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{primary_key},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{primary_key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{primary_key},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{primary_key},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"field"};
    
    Parse::RecDescent::_trace(q{Trying rule: [field]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{field},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{field_name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [field_name data_type field_qualifier reference_definition]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{field});
        %item = (__RULE__ => q{field});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [data_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{data_type})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::data_type($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [data_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [data_type]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{data_type}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [field_qualifier]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{field_qualifier})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_qualifier, 0, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [field_qualifier]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [field_qualifier]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_qualifier(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [reference_definition]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{reference_definition})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::reference_definition, 0, 1, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [reference_definition]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [reference_definition]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reference_definition(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
        $return = {
            supertype   => 'field',
            name        => $item{'field_name'},
            data_type   => $item{'data_type'}{'type'},
            size        => $item{'data_type'}{'size'},
            constraints => $item{'reference_definition(?)'},
        }
    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [field_name data_type field_qualifier reference_definition]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        
        my $_savetext;
        @item = (q{field});
        %item = (__RULE__ => q{field});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{field},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{field},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{field},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{field},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::TEMPORARY
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TEMPORARY"};
    
    Parse::RecDescent::_trace(q{Trying rule: [TEMPORARY]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{TEMPORARY},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/temporary/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/temporary/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{TEMPORARY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TEMPORARY});
        %item = (__RULE__ => q{TEMPORARY});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/temporary/i]}, Parse::RecDescent::_tracefirst($text),
                      q{TEMPORARY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:temporary)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/temporary/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{TEMPORARY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{TEMPORARY},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{TEMPORARY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{TEMPORARY},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{TEMPORARY},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::KEY
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"KEY"};
    
    Parse::RecDescent::_trace(q{Trying rule: [KEY]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{KEY},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/key/i, or /index/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/key/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{KEY});
        %item = (__RULE__ => q{KEY});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/key/i]}, Parse::RecDescent::_tracefirst($text),
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:key)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/key/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/index/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{KEY});
        %item = (__RULE__ => q{KEY});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/index/i]}, Parse::RecDescent::_tracefirst($text),
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:index)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/index/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{KEY},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{KEY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{KEY},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{KEY},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::create_definition
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"create_definition"};
    
    Parse::RecDescent::_trace(q{Trying rule: [create_definition]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{create_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{constraint, or index, or field, or comment});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [constraint]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{create_definition});
        %item = (__RULE__ => q{create_definition});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [constraint]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::constraint($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [constraint]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [constraint]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{constraint}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [constraint]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [index]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{create_definition});
        %item = (__RULE__ => q{create_definition});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [index]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::index($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [index]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [index]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{index}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [index]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [field]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{create_definition});
        %item = (__RULE__ => q{create_definition});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [field]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [field]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [comment]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{create_definition});
        %item = (__RULE__ => q{create_definition});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [comment]},
                  Parse::RecDescent::_tracefirst($text),
                  q{create_definition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [comment]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{create_definition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [comment]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comment}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [comment]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        
        my $_savetext;
        @item = (q{create_definition});
        %item = (__RULE__ => q{create_definition});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{create_definition},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{create_definition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{create_definition},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{create_definition},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::unsigned
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"unsigned"};
    
    Parse::RecDescent::_trace(q{Trying rule: [unsigned]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{unsigned},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/unsigned/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/unsigned/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{unsigned},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{unsigned});
        %item = (__RULE__ => q{unsigned});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/unsigned/i]}, Parse::RecDescent::_tracefirst($text),
                      q{unsigned},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:unsigned)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{unsigned},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = 0 };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/unsigned/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{unsigned},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{unsigned},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{unsigned},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{unsigned},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{unsigned},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::startrule
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"startrule"};
    
    Parse::RecDescent::_trace(q{Trying rule: [startrule]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{statement});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [statement eofile]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{startrule});
        %item = (__RULE__ => q{startrule});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying repeated subrule: [statement]},
                  Parse::RecDescent::_tracefirst($text),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::statement, 1, 100000000, $_noactions,$expectation,sub { \@arg }))) 
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [statement]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [statement]<< (}
                    . @$_tok . q{ times)},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{statement(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying subrule: [eofile]},
                  Parse::RecDescent::_tracefirst($text),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{eofile})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::eofile($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [eofile]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [eofile]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{eofile}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { \%tables };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [statement eofile]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{startrule},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{startrule},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{startrule},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"field_type"};
    
    Parse::RecDescent::_trace(q{Trying rule: [field_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{field_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{WORD});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [WORD]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{field_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{field_type});
        %item = (__RULE__ => q{field_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{field_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{field_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{field_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [WORD]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{field_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{field_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{field_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{field_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{field_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::create_index
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"create_index"};
    
    Parse::RecDescent::_trace(q{Trying rule: [create_index]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{create_index},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/create/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/create/i /index/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{create_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{create_index});
        %item = (__RULE__ => q{create_index});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/create/i]}, Parse::RecDescent::_tracefirst($text),
                      q{create_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:create)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/index/i]}, Parse::RecDescent::_tracefirst($text),
                      q{create_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/index/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:index)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/create/i /index/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{create_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{create_index},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{create_index},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{create_index},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{create_index},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::parens_field_list
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"parens_field_list"};
    
    Parse::RecDescent::_trace(q{Trying rule: [parens_field_list]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{parens_field_list},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' <leftop: field_name /,/ field_name> ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{parens_field_list});
        %item = (__RULE__ => q{parens_field_list});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying operator: [<leftop: field_name /,/ field_name>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{parens_field_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{<leftop: field_name /,/ field_name>})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my  @item;
          
          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{parens_field_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{field_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{parens_field_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }


          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'field_name(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [field_name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{parens_field_list},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{field_name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::field_name($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [field_name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{parens_field_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [field_name]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{field_name}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];
          last;
        } 

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: field_name /,/ field_name>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{parens_field_list},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: field_name /,/ field_name>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'field_name(s)'}=$_tok||[];


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: ['(' <leftop: field_name /,/ field_name> ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{parens_field_list},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{parens_field_list},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{parens_field_list},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{parens_field_list},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::DIGITS
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"DIGITS"};
    
    Parse::RecDescent::_trace(q{Trying rule: [DIGITS]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{DIGITS},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/\\d+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/\\d+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{DIGITS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{DIGITS});
        %item = (__RULE__ => q{DIGITS});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/\\d+/]}, Parse::RecDescent::_tracefirst($text),
                      q{DIGITS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\d+)/)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/\\d+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{DIGITS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{DIGITS},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{DIGITS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{DIGITS},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{DIGITS},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::foreign_key_def_begin
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"foreign_key_def_begin"};
    
    Parse::RecDescent::_trace(q{Trying rule: [foreign_key_def_begin]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{foreign_key_def_begin},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/constraint/i, or /foreign key/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/constraint/i /foreign key/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{foreign_key_def_begin});
        %item = (__RULE__ => q{foreign_key_def_begin});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/constraint/i]}, Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:constraint)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/foreign key/i]}, Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/foreign key/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:foreign key)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = '' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/constraint/i /foreign key/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/constraint/i WORD /foreign key/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{foreign_key_def_begin});
        %item = (__RULE__ => q{foreign_key_def_begin});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/constraint/i]}, Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:constraint)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [WORD]},
                  Parse::RecDescent::_tracefirst($text),
                  q{foreign_key_def_begin},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{WORD})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::WORD($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [WORD]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{foreign_key_def_begin},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [WORD]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{WORD}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [/foreign key/i]}, Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{/foreign key/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:foreign key)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/constraint/i WORD /foreign key/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/foreign key/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{foreign_key_def_begin});
        %item = (__RULE__ => q{foreign_key_def_begin});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/foreign key/i]}, Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:foreign key)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = '' };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/foreign key/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{foreign_key_def_begin},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{foreign_key_def_begin},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{foreign_key_def_begin},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{foreign_key_def_begin},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::statement
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"statement"};
    
    Parse::RecDescent::_trace(q{Trying rule: [statement]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{statement},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{comment, or use, or set, or drop, or create});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [comment]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{statement});
        %item = (__RULE__ => q{statement});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [comment]},
                  Parse::RecDescent::_tracefirst($text),
                  q{statement},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [comment]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{statement},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [comment]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{comment}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [comment]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [use]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{statement});
        %item = (__RULE__ => q{statement});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [use]},
                  Parse::RecDescent::_tracefirst($text),
                  q{statement},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::use($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [use]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{statement},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [use]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{use}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [use]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [set]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{statement});
        %item = (__RULE__ => q{statement});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [set]},
                  Parse::RecDescent::_tracefirst($text),
                  q{statement},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::set($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [set]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{statement},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [set]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{set}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [set]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [drop]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{statement});
        %item = (__RULE__ => q{statement});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [drop]},
                  Parse::RecDescent::_tracefirst($text),
                  q{statement},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::drop($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [drop]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{statement},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [drop]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{drop}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [drop]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [create]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        $text = $_[1];
        my $_savetext;
        @item = (q{statement});
        %item = (__RULE__ => q{statement});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [create]},
                  Parse::RecDescent::_tracefirst($text),
                  q{statement},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::create($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [create]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{statement},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [create]<< (return value: [}
                    . $_tok . q{]},
                      
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{create}} = $_tok;
        push @item, $_tok;
        
        }


        Parse::RecDescent::_trace(q{>>Matched production: [create]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<error...>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[5];
        
        my $_savetext;
        @item = (q{statement});
        %item = (__RULE__ => q{statement});
        my $repcount = 0;


        

        Parse::RecDescent::_trace(q{Trying directive: [<error...>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { if (1) { do {
        my $rule = $item[0];
           $rule =~ s/_/ /g;
        #WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
        push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
        } unless  $_noactions; undef } else {0} };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [<error...>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{statement},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{statement},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{statement},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{statement},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::reference_option
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"reference_option"};
    
    Parse::RecDescent::_trace(q{Trying rule: [reference_option]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{reference_option},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/restrict/i, or /cascade/i, or /set null/i, or /no action/i, or /set default/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/restrict/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{reference_option});
        %item = (__RULE__ => q{reference_option});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/restrict/i]}, Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:restrict)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/restrict/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/cascade/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{reference_option});
        %item = (__RULE__ => q{reference_option});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/cascade/i]}, Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:cascade)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/cascade/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/set null/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{reference_option});
        %item = (__RULE__ => q{reference_option});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/set null/i]}, Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:set null)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/set null/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/no action/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{reference_option});
        %item = (__RULE__ => q{reference_option});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/no action/i]}, Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:no action)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/no action/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/set default/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        $text = $_[1];
        my $_savetext;
        @item = (q{reference_option});
        %item = (__RULE__ => q{reference_option});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/set default/i]}, Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:set default)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/set default/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{reference_option},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{reference_option},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{reference_option},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{reference_option},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access::UNIQUE
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"UNIQUE"};
    
    Parse::RecDescent::_trace(q{Trying rule: [UNIQUE]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{UNIQUE},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  defined($_[2]) && $_[2];
    my $_noactions = defined($_[3]) && $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep="";
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/unique/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/unique/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{UNIQUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{UNIQUE});
        %item = (__RULE__ => q{UNIQUE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/unique/i]}, Parse::RecDescent::_tracefirst($text),
                      q{UNIQUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $lastsep = "";
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:unique)/i)
        {
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
		$current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{UNIQUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { 1 };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [/unique/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{UNIQUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{UNIQUE},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{UNIQUE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{UNIQUE},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
                      Parse::RecDescent::_tracefirst($text),
                      , q{UNIQUE},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}
}
package Parse::RecDescent::DDL::SQLT::Access; sub new { my $self = bless( {
                 'startcode' => '',
                 '_check' => {
                               'itempos' => '',
                               'prevcolumn' => '',
                               'prevoffset' => '',
                               'prevline' => '',
                               'thiscolumn' => '',
                               'thisoffset' => ''
                             },
                 'rules' => {
                              'auto_inc' => bless( {
                                                     'impcount' => 0,
                                                     'line' => 232,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'auto_inc',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'ldelim' => '/',
                                                                                                 'mod' => 'i',
                                                                                                 'description' => '/auto_increment/i',
                                                                                                 'line' => 232,
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'lookahead' => 0,
                                                                                                 'rdelim' => '/',
                                                                                                 'pattern' => 'auto_increment'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'line' => 232,
                                                                                                 'code' => '{ 1 }',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'number' => '0',
                                                                           'patcount' => 1,
                                                                           'line' => undef,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => []
                                                   }, 'Parse::RecDescent::Rule' ),
                              'reference_definition' => bless( {
                                                                 'impcount' => 0,
                                                                 'line' => 155,
                                                                 'changed' => 0,
                                                                 'vars' => '',
                                                                 'name' => 'reference_definition',
                                                                 'opcount' => 0,
                                                                 'prods' => [
                                                                              bless( {
                                                                                       'actcount' => 1,
                                                                                       'dircount' => 0,
                                                                                       'error' => undef,
                                                                                       'items' => [
                                                                                                    bless( {
                                                                                                             'ldelim' => '/',
                                                                                                             'mod' => 'i',
                                                                                                             'description' => '/references/i',
                                                                                                             'line' => 155,
                                                                                                             'hashname' => '__PATTERN1__',
                                                                                                             'lookahead' => 0,
                                                                                                             'rdelim' => '/',
                                                                                                             'pattern' => 'references'
                                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'line' => 155,
                                                                                                             'matchrule' => 0,
                                                                                                             'implicit' => undef,
                                                                                                             'lookahead' => 0,
                                                                                                             'subrule' => 'table_name'
                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'max' => 1,
                                                                                                             'min' => 0,
                                                                                                             'line' => 155,
                                                                                                             'expected' => undef,
                                                                                                             'repspec' => '?',
                                                                                                             'matchrule' => 0,
                                                                                                             'lookahead' => 0,
                                                                                                             'subrule' => 'parens_field_list'
                                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'max' => 1,
                                                                                                             'min' => 0,
                                                                                                             'line' => 155,
                                                                                                             'expected' => undef,
                                                                                                             'repspec' => '?',
                                                                                                             'matchrule' => 0,
                                                                                                             'lookahead' => 0,
                                                                                                             'subrule' => 'match_type'
                                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'max' => 1,
                                                                                                             'min' => 0,
                                                                                                             'line' => 155,
                                                                                                             'expected' => undef,
                                                                                                             'repspec' => '?',
                                                                                                             'matchrule' => 0,
                                                                                                             'lookahead' => 0,
                                                                                                             'subrule' => 'on_delete'
                                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'max' => 1,
                                                                                                             'min' => 0,
                                                                                                             'line' => 155,
                                                                                                             'expected' => undef,
                                                                                                             'repspec' => '?',
                                                                                                             'matchrule' => 0,
                                                                                                             'lookahead' => 0,
                                                                                                             'subrule' => 'on_update'
                                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                                    bless( {
                                                                                                             'line' => 156,
                                                                                                             'code' => '{
        $return = {
            type             => \'foreign_key\',
            reference_table  => $item[2],
            reference_fields => $item[3][0],
            match_type       => $item[4][0],
            on_delete        => $item[5][0],
            on_update        => $item[6][0],
        }
    }',
                                                                                                             'hashname' => '__ACTION1__',
                                                                                                             'lookahead' => 0
                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                  ],
                                                                                       'number' => '0',
                                                                                       'patcount' => 1,
                                                                                       'line' => undef,
                                                                                       'strcount' => 0,
                                                                                       'uncommit' => undef
                                                                                     }, 'Parse::RecDescent::Production' )
                                                                            ],
                                                                 'calls' => [
                                                                              'table_name',
                                                                              'parens_field_list',
                                                                              'match_type',
                                                                              'on_delete',
                                                                              'on_update'
                                                                            ]
                                                               }, 'Parse::RecDescent::Rule' ),
                              'NAME' => bless( {
                                                 'impcount' => 0,
                                                 'line' => 325,
                                                 'changed' => 0,
                                                 'vars' => '',
                                                 'name' => 'NAME',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'description' => '\'`\'',
                                                                                             'line' => 325,
                                                                                             'hashname' => '__STRING1__',
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => '`'
                                                                                           }, 'Parse::RecDescent::InterpLit' ),
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'mod' => '',
                                                                                             'description' => '/\\\\w+/',
                                                                                             'line' => 325,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'lookahead' => 0,
                                                                                             'rdelim' => '/',
                                                                                             'pattern' => '\\w+'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'description' => '\'`\'',
                                                                                             'line' => 325,
                                                                                             'hashname' => '__STRING2__',
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => '`'
                                                                                           }, 'Parse::RecDescent::InterpLit' ),
                                                                                    bless( {
                                                                                             'line' => 326,
                                                                                             'code' => '{ $item[2] }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'number' => '0',
                                                                       'patcount' => 1,
                                                                       'line' => undef,
                                                                       'strcount' => 2,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'mod' => '',
                                                                                             'description' => '/\\\\w+/',
                                                                                             'line' => 327,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'lookahead' => 0,
                                                                                             'rdelim' => '/',
                                                                                             'pattern' => '\\w+'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'line' => 328,
                                                                                             'code' => '{ $item[1] }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'number' => '1',
                                                                       'patcount' => 1,
                                                                       'line' => 327,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'calls' => []
                                               }, 'Parse::RecDescent::Rule' ),
                              'primary_key_def' => bless( {
                                                            'impcount' => 0,
                                                            'line' => 261,
                                                            'changed' => 0,
                                                            'vars' => '',
                                                            'name' => 'primary_key_def',
                                                            'opcount' => 0,
                                                            'prods' => [
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 1,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 261,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'primary_key'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'max' => 1,
                                                                                                        'min' => 0,
                                                                                                        'line' => 261,
                                                                                                        'expected' => undef,
                                                                                                        'repspec' => '?',
                                                                                                        'matchrule' => 0,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'index_name'
                                                                                                      }, 'Parse::RecDescent::Repetition' ),
                                                                                               bless( {
                                                                                                        'description' => '\'(\'',
                                                                                                        'line' => 261,
                                                                                                        'hashname' => '__STRING1__',
                                                                                                        'lookahead' => 0,
                                                                                                        'pattern' => '('
                                                                                                      }, 'Parse::RecDescent::Literal' ),
                                                                                               bless( {
                                                                                                        'min' => 1,
                                                                                                        'expected' => '<leftop: name_with_opt_paren /,/ name_with_opt_paren>',
                                                                                                        'rightarg' => bless( {
                                                                                                                               'argcode' => undef,
                                                                                                                               'line' => 261,
                                                                                                                               'matchrule' => 0,
                                                                                                                               'implicit' => undef,
                                                                                                                               'lookahead' => 0,
                                                                                                                               'subrule' => 'name_with_opt_paren'
                                                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                                        'op' => bless( {
                                                                                                                         'ldelim' => '/',
                                                                                                                         'mod' => '',
                                                                                                                         'description' => '/,/',
                                                                                                                         'line' => 261,
                                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                                         'lookahead' => 0,
                                                                                                                         'rdelim' => '/',
                                                                                                                         'pattern' => ','
                                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                        'name' => '\'name_with_opt_paren(s)\'',
                                                                                                        'type' => 'leftop',
                                                                                                        'max' => 100000000,
                                                                                                        'hashname' => '__DIRECTIVE1__',
                                                                                                        'leftarg' => bless( {
                                                                                                                              'argcode' => undef,
                                                                                                                              'line' => 261,
                                                                                                                              'matchrule' => 0,
                                                                                                                              'implicit' => undef,
                                                                                                                              'lookahead' => 0,
                                                                                                                              'subrule' => 'name_with_opt_paren'
                                                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                                      }, 'Parse::RecDescent::Operator' ),
                                                                                               bless( {
                                                                                                        'description' => '\')\'',
                                                                                                        'line' => 261,
                                                                                                        'hashname' => '__STRING2__',
                                                                                                        'lookahead' => 0,
                                                                                                        'pattern' => ')'
                                                                                                      }, 'Parse::RecDescent::Literal' ),
                                                                                               bless( {
                                                                                                        'line' => 262,
                                                                                                        'code' => '{
        $return       = {
            supertype => \'constraint\',
            name      => $item{\'index_name(?)\'}[0],
            type      => \'primary_key\',
            fields    => $item[4],
        };
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '0',
                                                                                  'patcount' => 1,
                                                                                  'line' => undef,
                                                                                  'strcount' => 2,
                                                                                  'op' => [],
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' )
                                                                       ],
                                                            'calls' => [
                                                                         'primary_key',
                                                                         'index_name',
                                                                         'name_with_opt_paren'
                                                                       ]
                                                          }, 'Parse::RecDescent::Rule' ),
                              'COMMA' => bless( {
                                                  'impcount' => 0,
                                                  'line' => 323,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'COMMA',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '\',\'',
                                                                                              'line' => 323,
                                                                                              'hashname' => '__STRING1__',
                                                                                              'lookahead' => 0,
                                                                                              'pattern' => ','
                                                                                            }, 'Parse::RecDescent::Literal' )
                                                                                   ],
                                                                        'number' => '0',
                                                                        'patcount' => 0,
                                                                        'line' => undef,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => []
                                                }, 'Parse::RecDescent::Rule' ),
                              'match_type' => bless( {
                                                       'impcount' => 0,
                                                       'line' => 167,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'match_type',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 1,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'ldelim' => '/',
                                                                                                   'mod' => 'i',
                                                                                                   'description' => '/match full/i',
                                                                                                   'line' => 167,
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'lookahead' => 0,
                                                                                                   'rdelim' => '/',
                                                                                                   'pattern' => 'match full'
                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                          bless( {
                                                                                                   'line' => 167,
                                                                                                   'code' => '{ \'full\' }',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'number' => '0',
                                                                             'patcount' => 1,
                                                                             'line' => undef,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'actcount' => 1,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'ldelim' => '/',
                                                                                                   'mod' => 'i',
                                                                                                   'description' => '/match partial/i',
                                                                                                   'line' => 169,
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'lookahead' => 0,
                                                                                                   'rdelim' => '/',
                                                                                                   'pattern' => 'match partial'
                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                          bless( {
                                                                                                   'line' => 169,
                                                                                                   'code' => '{ \'partial\' }',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'number' => '1',
                                                                             'patcount' => 1,
                                                                             'line' => 168,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => []
                                                     }, 'Parse::RecDescent::Rule' ),
                              'index' => bless( {
                                                  'impcount' => 0,
                                                  'line' => 184,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'index',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'line' => 184,
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'normal_index'
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'number' => '0',
                                                                        'patcount' => 0,
                                                                        'line' => undef,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'line' => 185,
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'fulltext_index'
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'number' => '1',
                                                                        'patcount' => 0,
                                                                        'line' => 185,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 1,
                                                                        'error' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'line' => 186,
                                                                                              'msg' => '',
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'commitonly' => '',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Error' )
                                                                                   ],
                                                                        'number' => '2',
                                                                        'patcount' => 0,
                                                                        'line' => 186,
                                                                        'strcount' => 0,
                                                                        'uncommit' => 0
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => [
                                                               'normal_index',
                                                               'fulltext_index'
                                                             ]
                                                }, 'Parse::RecDescent::Rule' ),
                              'type_qualifier' => bless( {
                                                           'impcount' => 0,
                                                           'line' => 215,
                                                           'changed' => 0,
                                                           'vars' => '',
                                                           'name' => 'type_qualifier',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 1,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'ldelim' => '/',
                                                                                                       'mod' => 'i',
                                                                                                       'description' => '/(BINARY|UNSIGNED|ZEROFILL)/i',
                                                                                                       'line' => 215,
                                                                                                       'hashname' => '__PATTERN1__',
                                                                                                       'lookahead' => 0,
                                                                                                       'rdelim' => '/',
                                                                                                       'pattern' => '(BINARY|UNSIGNED|ZEROFILL)'
                                                                                                     }, 'Parse::RecDescent::Token' ),
                                                                                              bless( {
                                                                                                       'line' => 216,
                                                                                                       'code' => '{ lc $item[1] }',
                                                                                                       'hashname' => '__ACTION1__',
                                                                                                       'lookahead' => 0
                                                                                                     }, 'Parse::RecDescent::Action' )
                                                                                            ],
                                                                                 'number' => '0',
                                                                                 'patcount' => 1,
                                                                                 'line' => undef,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'Parse::RecDescent::Production' )
                                                                      ],
                                                           'calls' => []
                                                         }, 'Parse::RecDescent::Rule' ),
                              'table_name' => bless( {
                                                       'impcount' => 0,
                                                       'line' => 188,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'table_name',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 188,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'NAME'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '0',
                                                                             'patcount' => 0,
                                                                             'line' => undef,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'NAME'
                                                                  ]
                                                     }, 'Parse::RecDescent::Rule' ),
                              'field_name' => bless( {
                                                       'impcount' => 0,
                                                       'line' => 190,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'field_name',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 190,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'NAME'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '0',
                                                                             'patcount' => 0,
                                                                             'line' => undef,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'NAME'
                                                                  ]
                                                     }, 'Parse::RecDescent::Rule' ),
                              'use' => bless( {
                                                'impcount' => 0,
                                                'line' => 23,
                                                'changed' => 0,
                                                'vars' => '',
                                                'name' => 'use',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 1,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'ldelim' => '/',
                                                                                            'mod' => 'i',
                                                                                            'description' => '/use/i',
                                                                                            'line' => 23,
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'lookahead' => 0,
                                                                                            'rdelim' => '/',
                                                                                            'pattern' => 'use'
                                                                                          }, 'Parse::RecDescent::Token' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'line' => 23,
                                                                                            'matchrule' => 0,
                                                                                            'implicit' => undef,
                                                                                            'lookahead' => 0,
                                                                                            'subrule' => 'WORD'
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'description' => '\';\'',
                                                                                            'line' => 23,
                                                                                            'hashname' => '__STRING1__',
                                                                                            'lookahead' => 0,
                                                                                            'pattern' => ';'
                                                                                          }, 'Parse::RecDescent::Literal' ),
                                                                                   bless( {
                                                                                            'line' => 24,
                                                                                            'code' => '{ @table_comments = () }',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'number' => '0',
                                                                      'patcount' => 1,
                                                                      'line' => undef,
                                                                      'strcount' => 1,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'calls' => [
                                                             'WORD'
                                                           ]
                                              }, 'Parse::RecDescent::Rule' ),
                              'CREATE' => bless( {
                                                   'impcount' => 0,
                                                   'line' => 313,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'CREATE',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => 'i',
                                                                                               'description' => '/create/i',
                                                                                               'line' => 313,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => 'create'
                                                                                             }, 'Parse::RecDescent::Token' )
                                                                                    ],
                                                                         'number' => '0',
                                                                         'patcount' => 1,
                                                                         'line' => undef,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => []
                                                 }, 'Parse::RecDescent::Rule' ),
                              'eofile' => bless( {
                                                   'impcount' => 0,
                                                   'line' => 14,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'eofile',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => '',
                                                                                               'description' => '/^\\\\Z/',
                                                                                               'line' => 14,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => '^\\Z'
                                                                                             }, 'Parse::RecDescent::Token' )
                                                                                    ],
                                                                         'number' => '0',
                                                                         'patcount' => 1,
                                                                         'line' => undef,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => []
                                                 }, 'Parse::RecDescent::Rule' ),
                              'unique_key_def' => bless( {
                                                           'impcount' => 0,
                                                           'line' => 271,
                                                           'changed' => 0,
                                                           'vars' => '',
                                                           'name' => 'unique_key_def',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 1,
                                                                                 'dircount' => 1,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'line' => 271,
                                                                                                       'matchrule' => 0,
                                                                                                       'implicit' => undef,
                                                                                                       'lookahead' => 0,
                                                                                                       'subrule' => 'UNIQUE'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'line' => 271,
                                                                                                       'expected' => undef,
                                                                                                       'repspec' => '?',
                                                                                                       'matchrule' => 0,
                                                                                                       'lookahead' => 0,
                                                                                                       'subrule' => 'KEY'
                                                                                                     }, 'Parse::RecDescent::Repetition' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'line' => 271,
                                                                                                       'expected' => undef,
                                                                                                       'repspec' => '?',
                                                                                                       'matchrule' => 0,
                                                                                                       'lookahead' => 0,
                                                                                                       'subrule' => 'index_name'
                                                                                                     }, 'Parse::RecDescent::Repetition' ),
                                                                                              bless( {
                                                                                                       'description' => '\'(\'',
                                                                                                       'line' => 271,
                                                                                                       'hashname' => '__STRING1__',
                                                                                                       'lookahead' => 0,
                                                                                                       'pattern' => '('
                                                                                                     }, 'Parse::RecDescent::Literal' ),
                                                                                              bless( {
                                                                                                       'min' => 1,
                                                                                                       'expected' => '<leftop: name_with_opt_paren /,/ name_with_opt_paren>',
                                                                                                       'rightarg' => bless( {
                                                                                                                              'argcode' => undef,
                                                                                                                              'line' => 271,
                                                                                                                              'matchrule' => 0,
                                                                                                                              'implicit' => undef,
                                                                                                                              'lookahead' => 0,
                                                                                                                              'subrule' => 'name_with_opt_paren'
                                                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                                       'op' => bless( {
                                                                                                                        'ldelim' => '/',
                                                                                                                        'mod' => '',
                                                                                                                        'description' => '/,/',
                                                                                                                        'line' => 271,
                                                                                                                        'hashname' => '__PATTERN1__',
                                                                                                                        'lookahead' => 0,
                                                                                                                        'rdelim' => '/',
                                                                                                                        'pattern' => ','
                                                                                                                      }, 'Parse::RecDescent::Token' ),
                                                                                                       'name' => '\'name_with_opt_paren(s)\'',
                                                                                                       'type' => 'leftop',
                                                                                                       'max' => 100000000,
                                                                                                       'hashname' => '__DIRECTIVE1__',
                                                                                                       'leftarg' => bless( {
                                                                                                                             'argcode' => undef,
                                                                                                                             'line' => 271,
                                                                                                                             'matchrule' => 0,
                                                                                                                             'implicit' => undef,
                                                                                                                             'lookahead' => 0,
                                                                                                                             'subrule' => 'name_with_opt_paren'
                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                     }, 'Parse::RecDescent::Operator' ),
                                                                                              bless( {
                                                                                                       'description' => '\')\'',
                                                                                                       'line' => 271,
                                                                                                       'hashname' => '__STRING2__',
                                                                                                       'lookahead' => 0,
                                                                                                       'pattern' => ')'
                                                                                                     }, 'Parse::RecDescent::Literal' ),
                                                                                              bless( {
                                                                                                       'line' => 272,
                                                                                                       'code' => '{
        $return       = {
            supertype => \'constraint\',
            name      => $item{\'index_name(?)\'}[0],
            type      => \'unique\',
            fields    => $item[5],
        }
    }',
                                                                                                       'hashname' => '__ACTION1__',
                                                                                                       'lookahead' => 0
                                                                                                     }, 'Parse::RecDescent::Action' )
                                                                                            ],
                                                                                 'number' => '0',
                                                                                 'patcount' => 1,
                                                                                 'line' => undef,
                                                                                 'strcount' => 2,
                                                                                 'op' => [],
                                                                                 'uncommit' => undef
                                                                               }, 'Parse::RecDescent::Production' )
                                                                      ],
                                                           'calls' => [
                                                                        'UNIQUE',
                                                                        'KEY',
                                                                        'index_name',
                                                                        'name_with_opt_paren'
                                                                      ]
                                                         }, 'Parse::RecDescent::Rule' ),
                              'TABLE' => bless( {
                                                  'impcount' => 0,
                                                  'line' => 317,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'TABLE',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'ldelim' => '/',
                                                                                              'mod' => 'i',
                                                                                              'description' => '/table/i',
                                                                                              'line' => 317,
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'lookahead' => 0,
                                                                                              'rdelim' => '/',
                                                                                              'pattern' => 'table'
                                                                                            }, 'Parse::RecDescent::Token' )
                                                                                   ],
                                                                        'number' => '0',
                                                                        'patcount' => 1,
                                                                        'line' => undef,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => []
                                                }, 'Parse::RecDescent::Rule' ),
                              'foreign_key_def' => bless( {
                                                            'impcount' => 0,
                                                            'line' => 241,
                                                            'changed' => 0,
                                                            'vars' => '',
                                                            'name' => 'foreign_key_def',
                                                            'opcount' => 0,
                                                            'prods' => [
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 241,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'foreign_key_def_begin'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 241,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'parens_field_list'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 241,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'reference_definition'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 242,
                                                                                                        'code' => '{
        $return              =  {
            supertype        => \'constraint\',
            type             => \'foreign_key\',
            name             => $item[1],
            fields           => $item[2],
            %{ $item{\'reference_definition\'} },
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '0',
                                                                                  'patcount' => 0,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' )
                                                                       ],
                                                            'calls' => [
                                                                         'foreign_key_def_begin',
                                                                         'parens_field_list',
                                                                         'reference_definition'
                                                                       ]
                                                          }, 'Parse::RecDescent::Rule' ),
                              'data_type' => bless( {
                                                      'impcount' => 0,
                                                      'line' => 194,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'data_type',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 194,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'access_data_type'
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 0,
                                                                                                  'line' => 194,
                                                                                                  'expected' => undef,
                                                                                                  'repspec' => 's?',
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'parens_value_list'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 0,
                                                                                                  'line' => 194,
                                                                                                  'expected' => undef,
                                                                                                  'repspec' => 's?',
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'type_qualifier'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'line' => 195,
                                                                                                  'code' => '{
        $return        = {
            type       => $item[1],
            size       => $item[2][0],
            qualifiers => $item[3],
        }
    }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'number' => '0',
                                                                            'patcount' => 0,
                                                                            'line' => undef,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'access_data_type',
                                                                   'parens_value_list',
                                                                   'type_qualifier'
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'fulltext_index' => bless( {
                                                           'impcount' => 0,
                                                           'line' => 291,
                                                           'changed' => 0,
                                                           'vars' => '',
                                                           'name' => 'fulltext_index',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 1,
                                                                                 'dircount' => 1,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'ldelim' => '/',
                                                                                                       'mod' => 'i',
                                                                                                       'description' => '/fulltext/i',
                                                                                                       'line' => 291,
                                                                                                       'hashname' => '__PATTERN1__',
                                                                                                       'lookahead' => 0,
                                                                                                       'rdelim' => '/',
                                                                                                       'pattern' => 'fulltext'
                                                                                                     }, 'Parse::RecDescent::Token' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'line' => 291,
                                                                                                       'expected' => undef,
                                                                                                       'repspec' => '?',
                                                                                                       'matchrule' => 0,
                                                                                                       'lookahead' => 0,
                                                                                                       'subrule' => 'KEY'
                                                                                                     }, 'Parse::RecDescent::Repetition' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'line' => 291,
                                                                                                       'expected' => undef,
                                                                                                       'repspec' => '?',
                                                                                                       'matchrule' => 0,
                                                                                                       'lookahead' => 0,
                                                                                                       'subrule' => 'index_name'
                                                                                                     }, 'Parse::RecDescent::Repetition' ),
                                                                                              bless( {
                                                                                                       'description' => '\'(\'',
                                                                                                       'line' => 291,
                                                                                                       'hashname' => '__STRING1__',
                                                                                                       'lookahead' => 0,
                                                                                                       'pattern' => '('
                                                                                                     }, 'Parse::RecDescent::Literal' ),
                                                                                              bless( {
                                                                                                       'min' => 1,
                                                                                                       'expected' => '<leftop: name_with_opt_paren /,/ name_with_opt_paren>',
                                                                                                       'rightarg' => bless( {
                                                                                                                              'argcode' => undef,
                                                                                                                              'line' => 291,
                                                                                                                              'matchrule' => 0,
                                                                                                                              'implicit' => undef,
                                                                                                                              'lookahead' => 0,
                                                                                                                              'subrule' => 'name_with_opt_paren'
                                                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                                       'op' => bless( {
                                                                                                                        'ldelim' => '/',
                                                                                                                        'mod' => '',
                                                                                                                        'description' => '/,/',
                                                                                                                        'line' => 291,
                                                                                                                        'hashname' => '__PATTERN2__',
                                                                                                                        'lookahead' => 0,
                                                                                                                        'rdelim' => '/',
                                                                                                                        'pattern' => ','
                                                                                                                      }, 'Parse::RecDescent::Token' ),
                                                                                                       'name' => '\'name_with_opt_paren(s)\'',
                                                                                                       'type' => 'leftop',
                                                                                                       'max' => 100000000,
                                                                                                       'hashname' => '__DIRECTIVE1__',
                                                                                                       'leftarg' => bless( {
                                                                                                                             'argcode' => undef,
                                                                                                                             'line' => 291,
                                                                                                                             'matchrule' => 0,
                                                                                                                             'implicit' => undef,
                                                                                                                             'lookahead' => 0,
                                                                                                                             'subrule' => 'name_with_opt_paren'
                                                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                                     }, 'Parse::RecDescent::Operator' ),
                                                                                              bless( {
                                                                                                       'description' => '\')\'',
                                                                                                       'line' => 291,
                                                                                                       'hashname' => '__STRING2__',
                                                                                                       'lookahead' => 0,
                                                                                                       'pattern' => ')'
                                                                                                     }, 'Parse::RecDescent::Literal' ),
                                                                                              bless( {
                                                                                                       'line' => 292,
                                                                                                       'code' => '{
        $return       = {
            supertype => \'index\',
            type      => \'fulltext\',
            name      => $item{\'index_name(?)\'}[0],
            fields    => $item[5],
        }
    }',
                                                                                                       'hashname' => '__ACTION1__',
                                                                                                       'lookahead' => 0
                                                                                                     }, 'Parse::RecDescent::Action' )
                                                                                            ],
                                                                                 'number' => '0',
                                                                                 'patcount' => 2,
                                                                                 'line' => undef,
                                                                                 'strcount' => 2,
                                                                                 'op' => [],
                                                                                 'uncommit' => undef
                                                                               }, 'Parse::RecDescent::Production' )
                                                                      ],
                                                           'calls' => [
                                                                        'KEY',
                                                                        'index_name',
                                                                        'name_with_opt_paren'
                                                                      ]
                                                         }, 'Parse::RecDescent::Rule' ),
                              'comment' => bless( {
                                                    'impcount' => 0,
                                                    'line' => 94,
                                                    'changed' => 0,
                                                    'vars' => '',
                                                    'name' => 'comment',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'ldelim' => '/',
                                                                                                'mod' => '',
                                                                                                'description' => '/^\\\\s*--(.*)\\\\n/',
                                                                                                'line' => 94,
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'lookahead' => 0,
                                                                                                'rdelim' => '/',
                                                                                                'pattern' => '^\\s*--(.*)\\n'
                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                       bless( {
                                                                                                'line' => 95,
                                                                                                'code' => '{
        my $comment =  $1;
        $return     = $comment;
        push @table_comments, $comment;
    }',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'number' => '0',
                                                                          'patcount' => 1,
                                                                          'line' => undef,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'calls' => []
                                                  }, 'Parse::RecDescent::Rule' ),
                              'index_name' => bless( {
                                                       'impcount' => 0,
                                                       'line' => 192,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'index_name',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 192,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'NAME'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '0',
                                                                             'patcount' => 0,
                                                                             'line' => undef,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'NAME'
                                                                  ]
                                                     }, 'Parse::RecDescent::Rule' ),
                              'name_with_opt_paren' => bless( {
                                                                'impcount' => 0,
                                                                'line' => 301,
                                                                'changed' => 0,
                                                                'vars' => '',
                                                                'name' => 'name_with_opt_paren',
                                                                'opcount' => 0,
                                                                'prods' => [
                                                                             bless( {
                                                                                      'actcount' => 1,
                                                                                      'dircount' => 0,
                                                                                      'error' => undef,
                                                                                      'items' => [
                                                                                                   bless( {
                                                                                                            'argcode' => undef,
                                                                                                            'line' => 301,
                                                                                                            'matchrule' => 0,
                                                                                                            'implicit' => undef,
                                                                                                            'lookahead' => 0,
                                                                                                            'subrule' => 'NAME'
                                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                                   bless( {
                                                                                                            'argcode' => undef,
                                                                                                            'max' => 100000000,
                                                                                                            'min' => 0,
                                                                                                            'line' => 301,
                                                                                                            'expected' => undef,
                                                                                                            'repspec' => 's?',
                                                                                                            'matchrule' => 0,
                                                                                                            'lookahead' => 0,
                                                                                                            'subrule' => 'parens_value_list'
                                                                                                          }, 'Parse::RecDescent::Repetition' ),
                                                                                                   bless( {
                                                                                                            'line' => 302,
                                                                                                            'code' => '{ $item[2][0] ? "$item[1]($item[2][0][0])" : $item[1] }',
                                                                                                            'hashname' => '__ACTION1__',
                                                                                                            'lookahead' => 0
                                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                                 ],
                                                                                      'number' => '0',
                                                                                      'patcount' => 0,
                                                                                      'line' => undef,
                                                                                      'strcount' => 0,
                                                                                      'uncommit' => undef
                                                                                    }, 'Parse::RecDescent::Production' )
                                                                           ],
                                                                'calls' => [
                                                                             'NAME',
                                                                             'parens_value_list'
                                                                           ]
                                                              }, 'Parse::RecDescent::Rule' ),
                              'drop' => bless( {
                                                 'impcount' => 0,
                                                 'line' => 29,
                                                 'changed' => 0,
                                                 'vars' => '',
                                                 'name' => 'drop',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 0,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'mod' => 'i',
                                                                                             'description' => '/drop/i',
                                                                                             'line' => 29,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'lookahead' => 0,
                                                                                             'rdelim' => '/',
                                                                                             'pattern' => 'drop'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'line' => 29,
                                                                                             'matchrule' => 0,
                                                                                             'implicit' => undef,
                                                                                             'lookahead' => 0,
                                                                                             'subrule' => 'TABLE'
                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'mod' => '',
                                                                                             'description' => '/[^;]+/',
                                                                                             'line' => 29,
                                                                                             'hashname' => '__PATTERN2__',
                                                                                             'lookahead' => 0,
                                                                                             'rdelim' => '/',
                                                                                             'pattern' => '[^;]+'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'description' => '\';\'',
                                                                                             'line' => 29,
                                                                                             'hashname' => '__STRING1__',
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => ';'
                                                                                           }, 'Parse::RecDescent::Literal' )
                                                                                  ],
                                                                       'number' => '0',
                                                                       'patcount' => 2,
                                                                       'line' => undef,
                                                                       'strcount' => 1,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'mod' => 'i',
                                                                                             'description' => '/drop/i',
                                                                                             'line' => 31,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'lookahead' => 0,
                                                                                             'rdelim' => '/',
                                                                                             'pattern' => 'drop'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'max' => 100000000,
                                                                                             'min' => 1,
                                                                                             'line' => 31,
                                                                                             'expected' => undef,
                                                                                             'repspec' => 's',
                                                                                             'matchrule' => 0,
                                                                                             'lookahead' => 0,
                                                                                             'subrule' => 'WORD'
                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                    bless( {
                                                                                             'description' => '\';\'',
                                                                                             'line' => 31,
                                                                                             'hashname' => '__STRING1__',
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => ';'
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'line' => 32,
                                                                                             'code' => '{ @table_comments = () }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'number' => '1',
                                                                       'patcount' => 1,
                                                                       'line' => undef,
                                                                       'strcount' => 1,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'calls' => [
                                                              'TABLE',
                                                              'WORD'
                                                            ]
                                               }, 'Parse::RecDescent::Rule' ),
                              'not_null' => bless( {
                                                     'impcount' => 0,
                                                     'line' => 222,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'not_null',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'ldelim' => '/',
                                                                                                 'mod' => 'i',
                                                                                                 'description' => '/not/i',
                                                                                                 'line' => 222,
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'lookahead' => 0,
                                                                                                 'rdelim' => '/',
                                                                                                 'pattern' => 'not'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'ldelim' => '/',
                                                                                                 'mod' => 'i',
                                                                                                 'description' => '/null/i',
                                                                                                 'line' => 222,
                                                                                                 'hashname' => '__PATTERN2__',
                                                                                                 'lookahead' => 0,
                                                                                                 'rdelim' => '/',
                                                                                                 'pattern' => 'null'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'line' => 222,
                                                                                                 'code' => '{ $return = 0 }',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'number' => '0',
                                                                           'patcount' => 2,
                                                                           'line' => undef,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => []
                                                   }, 'Parse::RecDescent::Rule' ),
                              'create' => bless( {
                                                   'impcount' => 0,
                                                   'line' => 34,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'create',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 34,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'CREATE'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => 'i',
                                                                                               'description' => '/database/i',
                                                                                               'line' => 34,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => 'database'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 34,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'WORD'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'description' => '\';\'',
                                                                                               'line' => 34,
                                                                                               'hashname' => '__STRING1__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => ';'
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'line' => 35,
                                                                                               'code' => '{ @table_comments = () }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'number' => '0',
                                                                         'patcount' => 1,
                                                                         'line' => undef,
                                                                         'strcount' => 1,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 1,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 37,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'CREATE'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 37,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'TABLE'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 37,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'table_name'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'description' => '\'(\'',
                                                                                               'line' => 37,
                                                                                               'hashname' => '__STRING1__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => '('
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'min' => 1,
                                                                                               'expected' => '<leftop: create_definition /,/ create_definition>',
                                                                                               'rightarg' => bless( {
                                                                                                                      'argcode' => undef,
                                                                                                                      'line' => 37,
                                                                                                                      'matchrule' => 0,
                                                                                                                      'implicit' => undef,
                                                                                                                      'lookahead' => 0,
                                                                                                                      'subrule' => 'create_definition'
                                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                               'op' => bless( {
                                                                                                                'ldelim' => '/',
                                                                                                                'mod' => '',
                                                                                                                'description' => '/,/',
                                                                                                                'line' => 37,
                                                                                                                'hashname' => '__PATTERN1__',
                                                                                                                'lookahead' => 0,
                                                                                                                'rdelim' => '/',
                                                                                                                'pattern' => ','
                                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                               'name' => '\'create_definition(s)\'',
                                                                                               'type' => 'leftop',
                                                                                               'max' => 100000000,
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'leftarg' => bless( {
                                                                                                                     'argcode' => undef,
                                                                                                                     'line' => 37,
                                                                                                                     'matchrule' => 0,
                                                                                                                     'implicit' => undef,
                                                                                                                     'lookahead' => 0,
                                                                                                                     'subrule' => 'create_definition'
                                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                             }, 'Parse::RecDescent::Operator' ),
                                                                                      bless( {
                                                                                               'description' => '\')\'',
                                                                                               'line' => 37,
                                                                                               'hashname' => '__STRING2__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => ')'
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'description' => '\';\'',
                                                                                               'line' => 37,
                                                                                               'hashname' => '__STRING3__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => ';'
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'line' => 38,
                                                                                               'code' => '{
        my $table_name                       = $item{\'table_name\'};
        $tables{ $table_name }{\'order\'}      = ++$table_order;
        $tables{ $table_name }{\'table_name\'} = $table_name;

        if ( @table_comments ) {
            $tables{ $table_name }{\'comments\'} = [ @table_comments ];
            @table_comments = ();
        }

        my $i = 1;
        for my $definition ( @{ $item[5] } ) {
            if ( $definition->{\'supertype\'} eq \'field\' ) {
                my $field_name = $definition->{\'name\'};
                $tables{ $table_name }{\'fields\'}{ $field_name } =
                    { %$definition, order => $i };
                $i++;

                if ( $definition->{\'is_primary_key\'} ) {
                    push @{ $tables{ $table_name }{\'constraints\'} },
                        {
                            type   => \'primary_key\',
                            fields => [ $field_name ],
                        }
                    ;
                }
            }
            elsif ( $definition->{\'supertype\'} eq \'constraint\' ) {
                push @{ $tables{ $table_name }{\'constraints\'} }, $definition;
            }
            elsif ( $definition->{\'supertype\'} eq \'index\' ) {
                push @{ $tables{ $table_name }{\'indices\'} }, $definition;
            }
        }

        1;
    }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'number' => '1',
                                                                         'patcount' => 1,
                                                                         'line' => undef,
                                                                         'strcount' => 3,
                                                                         'op' => [],
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 1,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 76,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'CREATE'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'max' => 1,
                                                                                               'min' => 0,
                                                                                               'line' => 76,
                                                                                               'expected' => undef,
                                                                                               'repspec' => '?',
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'UNIQUE'
                                                                                             }, 'Parse::RecDescent::Repetition' ),
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => 'i',
                                                                                               'description' => '/(index|key)/i',
                                                                                               'line' => 76,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => '(index|key)'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 76,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'index_name'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => 'i',
                                                                                               'description' => '/on/i',
                                                                                               'line' => 76,
                                                                                               'hashname' => '__PATTERN2__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => 'on'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'line' => 76,
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'table_name'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'description' => '\'(\'',
                                                                                               'line' => 76,
                                                                                               'hashname' => '__STRING1__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => '('
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'min' => 1,
                                                                                               'expected' => '<leftop: field_name /,/ field_name>',
                                                                                               'rightarg' => bless( {
                                                                                                                      'argcode' => undef,
                                                                                                                      'line' => 76,
                                                                                                                      'matchrule' => 0,
                                                                                                                      'implicit' => undef,
                                                                                                                      'lookahead' => 0,
                                                                                                                      'subrule' => 'field_name'
                                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                               'op' => bless( {
                                                                                                                'ldelim' => '/',
                                                                                                                'mod' => '',
                                                                                                                'description' => '/,/',
                                                                                                                'line' => 76,
                                                                                                                'hashname' => '__PATTERN3__',
                                                                                                                'lookahead' => 0,
                                                                                                                'rdelim' => '/',
                                                                                                                'pattern' => ','
                                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                               'name' => '\'field_name(s)\'',
                                                                                               'type' => 'leftop',
                                                                                               'max' => 100000000,
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'leftarg' => bless( {
                                                                                                                     'argcode' => undef,
                                                                                                                     'line' => 76,
                                                                                                                     'matchrule' => 0,
                                                                                                                     'implicit' => undef,
                                                                                                                     'lookahead' => 0,
                                                                                                                     'subrule' => 'field_name'
                                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                             }, 'Parse::RecDescent::Operator' ),
                                                                                      bless( {
                                                                                               'description' => '\')\'',
                                                                                               'line' => 76,
                                                                                               'hashname' => '__STRING2__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => ')'
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'description' => '\';\'',
                                                                                               'line' => 76,
                                                                                               'hashname' => '__STRING3__',
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => ';'
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'line' => 77,
                                                                                               'code' => '{
        @table_comments = ();
        push @{ $tables{ $item{\'table_name\'} }{\'indices\'} },
            {
                name   => $item[4],
                type   => $item[2] ? \'unique\' : \'normal\',
                fields => $item[8],
            }
        ;
    }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'number' => '2',
                                                                         'patcount' => 3,
                                                                         'line' => undef,
                                                                         'strcount' => 3,
                                                                         'op' => [],
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => [
                                                                'CREATE',
                                                                'WORD',
                                                                'TABLE',
                                                                'table_name',
                                                                'create_definition',
                                                                'UNIQUE',
                                                                'index_name',
                                                                'field_name'
                                                              ]
                                                 }, 'Parse::RecDescent::Rule' ),
                              'WORD' => bless( {
                                                 'impcount' => 0,
                                                 'line' => 319,
                                                 'changed' => 0,
                                                 'vars' => '',
                                                 'name' => 'WORD',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 0,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'mod' => '',
                                                                                             'description' => '/\\\\w+/',
                                                                                             'line' => 319,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'lookahead' => 0,
                                                                                             'rdelim' => '/',
                                                                                             'pattern' => '\\w+'
                                                                                           }, 'Parse::RecDescent::Token' )
                                                                                  ],
                                                                       'number' => '0',
                                                                       'patcount' => 1,
                                                                       'line' => undef,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'calls' => []
                                               }, 'Parse::RecDescent::Rule' ),
                              'access_data_type' => bless( {
                                                             'impcount' => 0,
                                                             'line' => 203,
                                                             'changed' => 0,
                                                             'vars' => '',
                                                             'name' => 'access_data_type',
                                                             'opcount' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/long integer/i',
                                                                                                         'line' => 203,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'long integer'
                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                bless( {
                                                                                                         'line' => 203,
                                                                                                         'code' => '{ $return = \'Long Integer\' }',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'number' => '0',
                                                                                   'patcount' => 1,
                                                                                   'line' => undef,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/text/i',
                                                                                                         'line' => 204,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'text'
                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                bless( {
                                                                                                         'line' => 204,
                                                                                                         'code' => '{ $return = \'Text\' }',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'number' => '1',
                                                                                   'patcount' => 1,
                                                                                   'line' => 204,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/datetime (\\\\(short\\\\))?/i',
                                                                                                         'line' => 205,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'datetime (\\(short\\))?'
                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                bless( {
                                                                                                         'line' => 205,
                                                                                                         'code' => '{ $return = \'DateTime\' }',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'number' => '2',
                                                                                   'patcount' => 1,
                                                                                   'line' => 205,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/boolean/i',
                                                                                                         'line' => 206,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'boolean'
                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                bless( {
                                                                                                         'line' => 206,
                                                                                                         'code' => '{ $return = \'Boolean\' }',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'number' => '3',
                                                                                   'patcount' => 1,
                                                                                   'line' => 206,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 0,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'line' => 207,
                                                                                                         'matchrule' => 0,
                                                                                                         'implicit' => undef,
                                                                                                         'lookahead' => 0,
                                                                                                         'subrule' => 'WORD'
                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                              ],
                                                                                   'number' => '4',
                                                                                   'patcount' => 0,
                                                                                   'line' => 207,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' )
                                                                        ],
                                                             'calls' => [
                                                                          'WORD'
                                                                        ]
                                                           }, 'Parse::RecDescent::Rule' ),
                              'VALUE' => bless( {
                                                  'impcount' => 0,
                                                  'line' => 330,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'VALUE',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'ldelim' => '/',
                                                                                              'mod' => '',
                                                                                              'description' => '/[-+]?\\\\.?\\\\d+(?:[eE]\\\\d+)?/',
                                                                                              'line' => 330,
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'lookahead' => 0,
                                                                                              'rdelim' => '/',
                                                                                              'pattern' => '[-+]?\\.?\\d+(?:[eE]\\d+)?'
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'line' => 331,
                                                                                              'code' => '{ $item[1] }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'number' => '0',
                                                                        'patcount' => 1,
                                                                        'line' => undef,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'ldelim' => '/',
                                                                                              'mod' => '',
                                                                                              'description' => '/\'.*?\'/',
                                                                                              'line' => 332,
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'lookahead' => 0,
                                                                                              'rdelim' => '/',
                                                                                              'pattern' => '\'.*?\''
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'line' => 333,
                                                                                              'code' => '{
        # remove leading/trailing quotes
        my $val = $item[1];
        $val    =~ s/^[\'"]|[\'"]$//g;
        $return = $val;
    }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'number' => '1',
                                                                        'patcount' => 1,
                                                                        'line' => 332,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'ldelim' => '/',
                                                                                              'mod' => '',
                                                                                              'description' => '/NULL/',
                                                                                              'line' => 339,
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'lookahead' => 0,
                                                                                              'rdelim' => '/',
                                                                                              'pattern' => 'NULL'
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'line' => 340,
                                                                                              'code' => '{ \'NULL\' }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'number' => '2',
                                                                        'patcount' => 1,
                                                                        'line' => 339,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => []
                                                }, 'Parse::RecDescent::Rule' ),
                              'constraint' => bless( {
                                                       'impcount' => 0,
                                                       'line' => 236,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'constraint',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 236,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'primary_key_def'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '0',
                                                                             'patcount' => 0,
                                                                             'line' => undef,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 237,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'unique_key_def'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '1',
                                                                             'patcount' => 0,
                                                                             'line' => 237,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 238,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'foreign_key_def'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '2',
                                                                             'patcount' => 0,
                                                                             'line' => 238,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 1,
                                                                             'error' => 1,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'line' => 239,
                                                                                                   'msg' => '',
                                                                                                   'hashname' => '__DIRECTIVE1__',
                                                                                                   'commitonly' => '',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Error' )
                                                                                        ],
                                                                             'number' => '3',
                                                                             'patcount' => 0,
                                                                             'line' => 239,
                                                                             'strcount' => 0,
                                                                             'uncommit' => 0
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'primary_key_def',
                                                                    'unique_key_def',
                                                                    'foreign_key_def'
                                                                  ]
                                                     }, 'Parse::RecDescent::Rule' ),
                              'on_update' => bless( {
                                                      'impcount' => 0,
                                                      'line' => 174,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'on_update',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => 'i',
                                                                                                  'description' => '/on update/i',
                                                                                                  'line' => 174,
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => 'on update'
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 174,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'reference_option'
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => 175,
                                                                                                  'code' => '{ $item[2] }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'number' => '0',
                                                                            'patcount' => 1,
                                                                            'line' => undef,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'reference_option'
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'table_option' => bless( {
                                                         'impcount' => 0,
                                                         'line' => 308,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'table_option',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 1,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'line' => 308,
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'subrule' => 'WORD'
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'ldelim' => '/',
                                                                                                     'mod' => '',
                                                                                                     'description' => '/\\\\s*=\\\\s*/',
                                                                                                     'line' => 308,
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'rdelim' => '/',
                                                                                                     'pattern' => '\\s*=\\s*'
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'line' => 308,
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'subrule' => 'WORD'
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'line' => 309,
                                                                                                     'code' => '{
        $return = { $item[1] => $item[3] };
    }',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'number' => '0',
                                                                               'patcount' => 1,
                                                                               'line' => undef,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => [
                                                                      'WORD'
                                                                    ]
                                                       }, 'Parse::RecDescent::Rule' ),
                              'parens_value_list' => bless( {
                                                              'impcount' => 0,
                                                              'line' => 212,
                                                              'changed' => 0,
                                                              'vars' => '',
                                                              'name' => 'parens_value_list',
                                                              'opcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'actcount' => 1,
                                                                                    'dircount' => 1,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'description' => '\'(\'',
                                                                                                          'line' => 212,
                                                                                                          'hashname' => '__STRING1__',
                                                                                                          'lookahead' => 0,
                                                                                                          'pattern' => '('
                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                 bless( {
                                                                                                          'min' => 1,
                                                                                                          'expected' => '<leftop: VALUE /,/ VALUE>',
                                                                                                          'rightarg' => bless( {
                                                                                                                                 'argcode' => undef,
                                                                                                                                 'line' => 212,
                                                                                                                                 'matchrule' => 0,
                                                                                                                                 'implicit' => undef,
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'subrule' => 'VALUE'
                                                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                                          'op' => bless( {
                                                                                                                           'ldelim' => '/',
                                                                                                                           'mod' => '',
                                                                                                                           'description' => '/,/',
                                                                                                                           'line' => 212,
                                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                                           'lookahead' => 0,
                                                                                                                           'rdelim' => '/',
                                                                                                                           'pattern' => ','
                                                                                                                         }, 'Parse::RecDescent::Token' ),
                                                                                                          'name' => '\'VALUE(s)\'',
                                                                                                          'type' => 'leftop',
                                                                                                          'max' => 100000000,
                                                                                                          'hashname' => '__DIRECTIVE1__',
                                                                                                          'leftarg' => bless( {
                                                                                                                                'argcode' => undef,
                                                                                                                                'line' => 212,
                                                                                                                                'matchrule' => 0,
                                                                                                                                'implicit' => undef,
                                                                                                                                'lookahead' => 0,
                                                                                                                                'subrule' => 'VALUE'
                                                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                                        }, 'Parse::RecDescent::Operator' ),
                                                                                                 bless( {
                                                                                                          'description' => '\')\'',
                                                                                                          'line' => 212,
                                                                                                          'hashname' => '__STRING2__',
                                                                                                          'lookahead' => 0,
                                                                                                          'pattern' => ')'
                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                 bless( {
                                                                                                          'line' => 213,
                                                                                                          'code' => '{ $item[2] }',
                                                                                                          'hashname' => '__ACTION1__',
                                                                                                          'lookahead' => 0
                                                                                                        }, 'Parse::RecDescent::Action' )
                                                                                               ],
                                                                                    'number' => '0',
                                                                                    'patcount' => 1,
                                                                                    'line' => undef,
                                                                                    'strcount' => 2,
                                                                                    'op' => [],
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' )
                                                                         ],
                                                              'calls' => [
                                                                           'VALUE'
                                                                         ]
                                                            }, 'Parse::RecDescent::Rule' ),
                              'normal_index' => bless( {
                                                         'impcount' => 0,
                                                         'line' => 281,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'normal_index',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 1,
                                                                               'dircount' => 1,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'line' => 281,
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'subrule' => 'KEY'
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'max' => 1,
                                                                                                     'min' => 0,
                                                                                                     'line' => 281,
                                                                                                     'expected' => undef,
                                                                                                     'repspec' => '?',
                                                                                                     'matchrule' => 0,
                                                                                                     'lookahead' => 0,
                                                                                                     'subrule' => 'index_name'
                                                                                                   }, 'Parse::RecDescent::Repetition' ),
                                                                                            bless( {
                                                                                                     'description' => '\'(\'',
                                                                                                     'line' => 281,
                                                                                                     'hashname' => '__STRING1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'pattern' => '('
                                                                                                   }, 'Parse::RecDescent::Literal' ),
                                                                                            bless( {
                                                                                                     'min' => 1,
                                                                                                     'expected' => '<leftop: name_with_opt_paren /,/ name_with_opt_paren>',
                                                                                                     'rightarg' => bless( {
                                                                                                                            'argcode' => undef,
                                                                                                                            'line' => 281,
                                                                                                                            'matchrule' => 0,
                                                                                                                            'implicit' => undef,
                                                                                                                            'lookahead' => 0,
                                                                                                                            'subrule' => 'name_with_opt_paren'
                                                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                                     'op' => bless( {
                                                                                                                      'ldelim' => '/',
                                                                                                                      'mod' => '',
                                                                                                                      'description' => '/,/',
                                                                                                                      'line' => 281,
                                                                                                                      'hashname' => '__PATTERN1__',
                                                                                                                      'lookahead' => 0,
                                                                                                                      'rdelim' => '/',
                                                                                                                      'pattern' => ','
                                                                                                                    }, 'Parse::RecDescent::Token' ),
                                                                                                     'name' => '\'name_with_opt_paren(s)\'',
                                                                                                     'type' => 'leftop',
                                                                                                     'max' => 100000000,
                                                                                                     'hashname' => '__DIRECTIVE1__',
                                                                                                     'leftarg' => bless( {
                                                                                                                           'argcode' => undef,
                                                                                                                           'line' => 281,
                                                                                                                           'matchrule' => 0,
                                                                                                                           'implicit' => undef,
                                                                                                                           'lookahead' => 0,
                                                                                                                           'subrule' => 'name_with_opt_paren'
                                                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                                   }, 'Parse::RecDescent::Operator' ),
                                                                                            bless( {
                                                                                                     'description' => '\')\'',
                                                                                                     'line' => 281,
                                                                                                     'hashname' => '__STRING2__',
                                                                                                     'lookahead' => 0,
                                                                                                     'pattern' => ')'
                                                                                                   }, 'Parse::RecDescent::Literal' ),
                                                                                            bless( {
                                                                                                     'line' => 282,
                                                                                                     'code' => '{
        $return       = {
            supertype => \'index\',
            type      => \'normal\',
            name      => $item{\'index_name(?)\'}[0],
            fields    => $item[4],
        }
    }',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'number' => '0',
                                                                               'patcount' => 1,
                                                                               'line' => undef,
                                                                               'strcount' => 2,
                                                                               'op' => [],
                                                                               'uncommit' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => [
                                                                      'KEY',
                                                                      'index_name',
                                                                      'name_with_opt_paren'
                                                                    ]
                                                       }, 'Parse::RecDescent::Rule' ),
                              'set' => bless( {
                                                'impcount' => 0,
                                                'line' => 26,
                                                'changed' => 0,
                                                'vars' => '',
                                                'name' => 'set',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 1,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'ldelim' => '/',
                                                                                            'mod' => 'i',
                                                                                            'description' => '/set/i',
                                                                                            'line' => 26,
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'lookahead' => 0,
                                                                                            'rdelim' => '/',
                                                                                            'pattern' => 'set'
                                                                                          }, 'Parse::RecDescent::Token' ),
                                                                                   bless( {
                                                                                            'ldelim' => '/',
                                                                                            'mod' => '',
                                                                                            'description' => '/[^;]+/',
                                                                                            'line' => 26,
                                                                                            'hashname' => '__PATTERN2__',
                                                                                            'lookahead' => 0,
                                                                                            'rdelim' => '/',
                                                                                            'pattern' => '[^;]+'
                                                                                          }, 'Parse::RecDescent::Token' ),
                                                                                   bless( {
                                                                                            'description' => '\';\'',
                                                                                            'line' => 26,
                                                                                            'hashname' => '__STRING1__',
                                                                                            'lookahead' => 0,
                                                                                            'pattern' => ';'
                                                                                          }, 'Parse::RecDescent::Literal' ),
                                                                                   bless( {
                                                                                            'line' => 27,
                                                                                            'code' => '{ @table_comments = () }',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'number' => '0',
                                                                      'patcount' => 2,
                                                                      'line' => undef,
                                                                      'strcount' => 1,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'calls' => []
                                              }, 'Parse::RecDescent::Rule' ),
                              'field_qualifier' => bless( {
                                                            'impcount' => 0,
                                                            'line' => 113,
                                                            'changed' => 0,
                                                            'vars' => '',
                                                            'name' => 'field_qualifier',
                                                            'opcount' => 0,
                                                            'prods' => [
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 113,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'not_null'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 114,
                                                                                                        'code' => '{
        $return = {
             null => $item{\'not_null\'},
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '0',
                                                                                  'patcount' => 0,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' ),
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 120,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'default_val'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 121,
                                                                                                        'code' => '{
        $return = {
             default => $item{\'default_val\'},
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '1',
                                                                                  'patcount' => 0,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' ),
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 127,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'auto_inc'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 128,
                                                                                                        'code' => '{
        $return = {
             is_auto_inc => $item{\'auto_inc\'},
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '2',
                                                                                  'patcount' => 0,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' ),
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 134,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'primary_key'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 135,
                                                                                                        'code' => '{
        $return = {
             is_primary_key => $item{\'primary_key\'},
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '3',
                                                                                  'patcount' => 0,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' ),
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 141,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'unsigned'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 142,
                                                                                                        'code' => '{
        $return = {
             is_unsigned => $item{\'unsigned\'},
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '4',
                                                                                  'patcount' => 0,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' ),
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'ldelim' => '/',
                                                                                                        'mod' => 'i',
                                                                                                        'description' => '/character set/i',
                                                                                                        'line' => 148,
                                                                                                        'hashname' => '__PATTERN1__',
                                                                                                        'lookahead' => 0,
                                                                                                        'rdelim' => '/',
                                                                                                        'pattern' => 'character set'
                                                                                                      }, 'Parse::RecDescent::Token' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'line' => 148,
                                                                                                        'matchrule' => 0,
                                                                                                        'implicit' => undef,
                                                                                                        'lookahead' => 0,
                                                                                                        'subrule' => 'WORD'
                                                                                                      }, 'Parse::RecDescent::Subrule' ),
                                                                                               bless( {
                                                                                                        'line' => 149,
                                                                                                        'code' => '{
        $return = {
            character_set => $item[2],
        }
    }',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'lookahead' => 0
                                                                                                      }, 'Parse::RecDescent::Action' )
                                                                                             ],
                                                                                  'number' => '5',
                                                                                  'patcount' => 1,
                                                                                  'line' => undef,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'Parse::RecDescent::Production' )
                                                                       ],
                                                            'calls' => [
                                                                         'not_null',
                                                                         'default_val',
                                                                         'auto_inc',
                                                                         'primary_key',
                                                                         'unsigned',
                                                                         'WORD'
                                                                       ]
                                                          }, 'Parse::RecDescent::Rule' ),
                              'on_delete' => bless( {
                                                      'impcount' => 0,
                                                      'line' => 171,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'on_delete',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => 'i',
                                                                                                  'description' => '/on delete/i',
                                                                                                  'line' => 171,
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => 'on delete'
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 171,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'reference_option'
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => 172,
                                                                                                  'code' => '{ $item[2] }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'number' => '0',
                                                                            'patcount' => 1,
                                                                            'line' => undef,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'reference_option'
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'default_val' => bless( {
                                                        'impcount' => 0,
                                                        'line' => 226,
                                                        'changed' => 0,
                                                        'vars' => '',
                                                        'name' => 'default_val',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'ldelim' => '/',
                                                                                                    'mod' => 'i',
                                                                                                    'description' => '/default/i',
                                                                                                    'line' => 226,
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'pattern' => 'default'
                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                           bless( {
                                                                                                    'ldelim' => '/',
                                                                                                    'mod' => '',
                                                                                                    'description' => '/\'(?:.*?\\\\\')*.*?\'|(?:\')?[\\\\w\\\\d:.-]*(?:\')?/',
                                                                                                    'line' => 226,
                                                                                                    'hashname' => '__PATTERN2__',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'pattern' => '\'(?:.*?\\\')*.*?\'|(?:\')?[\\w\\d:.-]*(?:\')?'
                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                           bless( {
                                                                                                    'line' => 227,
                                                                                                    'code' => '{
        $item[2] =~ s/^\\s*\'|\'\\s*$//g;
        $return  =  $item[2];
    }',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'number' => '0',
                                                                              'patcount' => 2,
                                                                              'line' => undef,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'calls' => []
                                                      }, 'Parse::RecDescent::Rule' ),
                              'primary_key' => bless( {
                                                        'impcount' => 0,
                                                        'line' => 234,
                                                        'changed' => 0,
                                                        'vars' => '',
                                                        'name' => 'primary_key',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'ldelim' => '/',
                                                                                                    'mod' => 'i',
                                                                                                    'description' => '/primary/i',
                                                                                                    'line' => 234,
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'pattern' => 'primary'
                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                           bless( {
                                                                                                    'ldelim' => '/',
                                                                                                    'mod' => 'i',
                                                                                                    'description' => '/key/i',
                                                                                                    'line' => 234,
                                                                                                    'hashname' => '__PATTERN2__',
                                                                                                    'lookahead' => 0,
                                                                                                    'rdelim' => '/',
                                                                                                    'pattern' => 'key'
                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                           bless( {
                                                                                                    'line' => 234,
                                                                                                    'code' => '{ 1 }',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'number' => '0',
                                                                              'patcount' => 2,
                                                                              'line' => undef,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'calls' => []
                                                      }, 'Parse::RecDescent::Rule' ),
                              'field' => bless( {
                                                  'impcount' => 0,
                                                  'line' => 101,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'field',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'line' => 101,
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'field_name'
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'line' => 101,
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'data_type'
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'max' => 100000000,
                                                                                              'min' => 0,
                                                                                              'line' => 101,
                                                                                              'expected' => undef,
                                                                                              'repspec' => 's?',
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'field_qualifier'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'max' => 1,
                                                                                              'min' => 0,
                                                                                              'line' => 101,
                                                                                              'expected' => undef,
                                                                                              'repspec' => '?',
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'reference_definition'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'line' => 102,
                                                                                              'code' => '{
        $return = {
            supertype   => \'field\',
            name        => $item{\'field_name\'},
            data_type   => $item{\'data_type\'}{\'type\'},
            size        => $item{\'data_type\'}{\'size\'},
            constraints => $item{\'reference_definition(?)\'},
        }
    }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'number' => '0',
                                                                        'patcount' => 0,
                                                                        'line' => undef,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 1,
                                                                        'error' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'line' => 111,
                                                                                              'msg' => '',
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'commitonly' => '',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Error' )
                                                                                   ],
                                                                        'number' => '1',
                                                                        'patcount' => 0,
                                                                        'line' => 111,
                                                                        'strcount' => 0,
                                                                        'uncommit' => 0
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => [
                                                               'field_name',
                                                               'data_type',
                                                               'field_qualifier',
                                                               'reference_definition'
                                                             ]
                                                }, 'Parse::RecDescent::Rule' ),
                              'TEMPORARY' => bless( {
                                                      'impcount' => 0,
                                                      'line' => 315,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'TEMPORARY',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => 'i',
                                                                                                  'description' => '/temporary/i',
                                                                                                  'line' => 315,
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => 'temporary'
                                                                                                }, 'Parse::RecDescent::Token' )
                                                                                       ],
                                                                            'number' => '0',
                                                                            'patcount' => 1,
                                                                            'line' => undef,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => []
                                                    }, 'Parse::RecDescent::Rule' ),
                              'KEY' => bless( {
                                                'impcount' => 0,
                                                'line' => 306,
                                                'changed' => 0,
                                                'vars' => '',
                                                'name' => 'KEY',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'ldelim' => '/',
                                                                                            'mod' => 'i',
                                                                                            'description' => '/key/i',
                                                                                            'line' => 306,
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'lookahead' => 0,
                                                                                            'rdelim' => '/',
                                                                                            'pattern' => 'key'
                                                                                          }, 'Parse::RecDescent::Token' )
                                                                                 ],
                                                                      'number' => '0',
                                                                      'patcount' => 1,
                                                                      'line' => undef,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' ),
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'ldelim' => '/',
                                                                                            'mod' => 'i',
                                                                                            'description' => '/index/i',
                                                                                            'line' => 306,
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'lookahead' => 0,
                                                                                            'rdelim' => '/',
                                                                                            'pattern' => 'index'
                                                                                          }, 'Parse::RecDescent::Token' )
                                                                                 ],
                                                                      'number' => '1',
                                                                      'patcount' => 1,
                                                                      'line' => 306,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'calls' => []
                                              }, 'Parse::RecDescent::Rule' ),
                              'create_definition' => bless( {
                                                              'impcount' => 0,
                                                              'line' => 88,
                                                              'changed' => 0,
                                                              'vars' => '',
                                                              'name' => 'create_definition',
                                                              'opcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'actcount' => 0,
                                                                                    'dircount' => 0,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'line' => 88,
                                                                                                          'matchrule' => 0,
                                                                                                          'implicit' => undef,
                                                                                                          'lookahead' => 0,
                                                                                                          'subrule' => 'constraint'
                                                                                                        }, 'Parse::RecDescent::Subrule' )
                                                                                               ],
                                                                                    'number' => '0',
                                                                                    'patcount' => 0,
                                                                                    'line' => undef,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' ),
                                                                           bless( {
                                                                                    'actcount' => 0,
                                                                                    'dircount' => 0,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'line' => 89,
                                                                                                          'matchrule' => 0,
                                                                                                          'implicit' => undef,
                                                                                                          'lookahead' => 0,
                                                                                                          'subrule' => 'index'
                                                                                                        }, 'Parse::RecDescent::Subrule' )
                                                                                               ],
                                                                                    'number' => '1',
                                                                                    'patcount' => 0,
                                                                                    'line' => 89,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' ),
                                                                           bless( {
                                                                                    'actcount' => 0,
                                                                                    'dircount' => 0,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'line' => 90,
                                                                                                          'matchrule' => 0,
                                                                                                          'implicit' => undef,
                                                                                                          'lookahead' => 0,
                                                                                                          'subrule' => 'field'
                                                                                                        }, 'Parse::RecDescent::Subrule' )
                                                                                               ],
                                                                                    'number' => '2',
                                                                                    'patcount' => 0,
                                                                                    'line' => 90,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' ),
                                                                           bless( {
                                                                                    'actcount' => 0,
                                                                                    'dircount' => 0,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'line' => 91,
                                                                                                          'matchrule' => 0,
                                                                                                          'implicit' => undef,
                                                                                                          'lookahead' => 0,
                                                                                                          'subrule' => 'comment'
                                                                                                        }, 'Parse::RecDescent::Subrule' )
                                                                                               ],
                                                                                    'number' => '3',
                                                                                    'patcount' => 0,
                                                                                    'line' => 91,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' ),
                                                                           bless( {
                                                                                    'actcount' => 0,
                                                                                    'dircount' => 1,
                                                                                    'error' => 1,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'line' => 92,
                                                                                                          'msg' => '',
                                                                                                          'hashname' => '__DIRECTIVE1__',
                                                                                                          'commitonly' => '',
                                                                                                          'lookahead' => 0
                                                                                                        }, 'Parse::RecDescent::Error' )
                                                                                               ],
                                                                                    'number' => '4',
                                                                                    'patcount' => 0,
                                                                                    'line' => 92,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => 0
                                                                                  }, 'Parse::RecDescent::Production' )
                                                                         ],
                                                              'calls' => [
                                                                           'constraint',
                                                                           'index',
                                                                           'field',
                                                                           'comment'
                                                                         ]
                                                            }, 'Parse::RecDescent::Rule' ),
                              'unsigned' => bless( {
                                                     'impcount' => 0,
                                                     'line' => 224,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'unsigned',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'ldelim' => '/',
                                                                                                 'mod' => 'i',
                                                                                                 'description' => '/unsigned/i',
                                                                                                 'line' => 224,
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'lookahead' => 0,
                                                                                                 'rdelim' => '/',
                                                                                                 'pattern' => 'unsigned'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'line' => 224,
                                                                                                 'code' => '{ $return = 0 }',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'number' => '0',
                                                                           'patcount' => 1,
                                                                           'line' => undef,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => []
                                                   }, 'Parse::RecDescent::Rule' ),
                              'startrule' => bless( {
                                                      'impcount' => 0,
                                                      'line' => 11,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'startrule',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 1,
                                                                                                  'line' => 12,
                                                                                                  'expected' => undef,
                                                                                                  'repspec' => 's',
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'statement'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 12,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'eofile'
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => 12,
                                                                                                  'code' => '{ \\%tables }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'number' => '0',
                                                                            'patcount' => 0,
                                                                            'line' => undef,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'statement',
                                                                   'eofile'
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'field_type' => bless( {
                                                       'impcount' => 0,
                                                       'line' => 218,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'field_type',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'line' => 218,
                                                                                                   'matchrule' => 0,
                                                                                                   'implicit' => undef,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'WORD'
                                                                                                 }, 'Parse::RecDescent::Subrule' )
                                                                                        ],
                                                                             'number' => '0',
                                                                             'patcount' => 0,
                                                                             'line' => undef,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'WORD'
                                                                  ]
                                                     }, 'Parse::RecDescent::Rule' ),
                              'create_index' => bless( {
                                                         'impcount' => 0,
                                                         'line' => 220,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'create_index',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'ldelim' => '/',
                                                                                                     'mod' => 'i',
                                                                                                     'description' => '/create/i',
                                                                                                     'line' => 220,
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'rdelim' => '/',
                                                                                                     'pattern' => 'create'
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'ldelim' => '/',
                                                                                                     'mod' => 'i',
                                                                                                     'description' => '/index/i',
                                                                                                     'line' => 220,
                                                                                                     'hashname' => '__PATTERN2__',
                                                                                                     'lookahead' => 0,
                                                                                                     'rdelim' => '/',
                                                                                                     'pattern' => 'index'
                                                                                                   }, 'Parse::RecDescent::Token' )
                                                                                          ],
                                                                               'number' => '0',
                                                                               'patcount' => 2,
                                                                               'line' => undef,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => []
                                                       }, 'Parse::RecDescent::Rule' ),
                              'parens_field_list' => bless( {
                                                              'impcount' => 0,
                                                              'line' => 209,
                                                              'changed' => 0,
                                                              'vars' => '',
                                                              'name' => 'parens_field_list',
                                                              'opcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'actcount' => 1,
                                                                                    'dircount' => 1,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'description' => '\'(\'',
                                                                                                          'line' => 209,
                                                                                                          'hashname' => '__STRING1__',
                                                                                                          'lookahead' => 0,
                                                                                                          'pattern' => '('
                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                 bless( {
                                                                                                          'min' => 1,
                                                                                                          'expected' => '<leftop: field_name /,/ field_name>',
                                                                                                          'rightarg' => bless( {
                                                                                                                                 'argcode' => undef,
                                                                                                                                 'line' => 209,
                                                                                                                                 'matchrule' => 0,
                                                                                                                                 'implicit' => undef,
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'subrule' => 'field_name'
                                                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                                          'op' => bless( {
                                                                                                                           'ldelim' => '/',
                                                                                                                           'mod' => '',
                                                                                                                           'description' => '/,/',
                                                                                                                           'line' => 209,
                                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                                           'lookahead' => 0,
                                                                                                                           'rdelim' => '/',
                                                                                                                           'pattern' => ','
                                                                                                                         }, 'Parse::RecDescent::Token' ),
                                                                                                          'name' => '\'field_name(s)\'',
                                                                                                          'type' => 'leftop',
                                                                                                          'max' => 100000000,
                                                                                                          'hashname' => '__DIRECTIVE1__',
                                                                                                          'leftarg' => bless( {
                                                                                                                                'argcode' => undef,
                                                                                                                                'line' => 209,
                                                                                                                                'matchrule' => 0,
                                                                                                                                'implicit' => undef,
                                                                                                                                'lookahead' => 0,
                                                                                                                                'subrule' => 'field_name'
                                                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                                        }, 'Parse::RecDescent::Operator' ),
                                                                                                 bless( {
                                                                                                          'description' => '\')\'',
                                                                                                          'line' => 209,
                                                                                                          'hashname' => '__STRING2__',
                                                                                                          'lookahead' => 0,
                                                                                                          'pattern' => ')'
                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                 bless( {
                                                                                                          'line' => 210,
                                                                                                          'code' => '{ $item[2] }',
                                                                                                          'hashname' => '__ACTION1__',
                                                                                                          'lookahead' => 0
                                                                                                        }, 'Parse::RecDescent::Action' )
                                                                                               ],
                                                                                    'number' => '0',
                                                                                    'patcount' => 1,
                                                                                    'line' => undef,
                                                                                    'strcount' => 2,
                                                                                    'op' => [],
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' )
                                                                         ],
                                                              'calls' => [
                                                                           'field_name'
                                                                         ]
                                                            }, 'Parse::RecDescent::Rule' ),
                              'DIGITS' => bless( {
                                                   'impcount' => 0,
                                                   'line' => 321,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'DIGITS',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => '',
                                                                                               'description' => '/\\\\d+/',
                                                                                               'line' => 321,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => '\\d+'
                                                                                             }, 'Parse::RecDescent::Token' )
                                                                                    ],
                                                                         'number' => '0',
                                                                         'patcount' => 1,
                                                                         'line' => undef,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => []
                                                 }, 'Parse::RecDescent::Rule' ),
                              'foreign_key_def_begin' => bless( {
                                                                  'impcount' => 0,
                                                                  'line' => 252,
                                                                  'changed' => 0,
                                                                  'vars' => '',
                                                                  'name' => 'foreign_key_def_begin',
                                                                  'opcount' => 0,
                                                                  'prods' => [
                                                                               bless( {
                                                                                        'actcount' => 1,
                                                                                        'dircount' => 0,
                                                                                        'error' => undef,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'ldelim' => '/',
                                                                                                              'mod' => 'i',
                                                                                                              'description' => '/constraint/i',
                                                                                                              'line' => 252,
                                                                                                              'hashname' => '__PATTERN1__',
                                                                                                              'lookahead' => 0,
                                                                                                              'rdelim' => '/',
                                                                                                              'pattern' => 'constraint'
                                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                                     bless( {
                                                                                                              'ldelim' => '/',
                                                                                                              'mod' => 'i',
                                                                                                              'description' => '/foreign key/i',
                                                                                                              'line' => 252,
                                                                                                              'hashname' => '__PATTERN2__',
                                                                                                              'lookahead' => 0,
                                                                                                              'rdelim' => '/',
                                                                                                              'pattern' => 'foreign key'
                                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                                     bless( {
                                                                                                              'line' => 253,
                                                                                                              'code' => '{ $return = \'\' }',
                                                                                                              'hashname' => '__ACTION1__',
                                                                                                              'lookahead' => 0
                                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                                   ],
                                                                                        'number' => '0',
                                                                                        'patcount' => 2,
                                                                                        'line' => undef,
                                                                                        'strcount' => 0,
                                                                                        'uncommit' => undef
                                                                                      }, 'Parse::RecDescent::Production' ),
                                                                               bless( {
                                                                                        'actcount' => 1,
                                                                                        'dircount' => 0,
                                                                                        'error' => undef,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'ldelim' => '/',
                                                                                                              'mod' => 'i',
                                                                                                              'description' => '/constraint/i',
                                                                                                              'line' => 255,
                                                                                                              'hashname' => '__PATTERN1__',
                                                                                                              'lookahead' => 0,
                                                                                                              'rdelim' => '/',
                                                                                                              'pattern' => 'constraint'
                                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                                     bless( {
                                                                                                              'argcode' => undef,
                                                                                                              'line' => 255,
                                                                                                              'matchrule' => 0,
                                                                                                              'implicit' => undef,
                                                                                                              'lookahead' => 0,
                                                                                                              'subrule' => 'WORD'
                                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                                     bless( {
                                                                                                              'ldelim' => '/',
                                                                                                              'mod' => 'i',
                                                                                                              'description' => '/foreign key/i',
                                                                                                              'line' => 255,
                                                                                                              'hashname' => '__PATTERN2__',
                                                                                                              'lookahead' => 0,
                                                                                                              'rdelim' => '/',
                                                                                                              'pattern' => 'foreign key'
                                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                                     bless( {
                                                                                                              'line' => 256,
                                                                                                              'code' => '{ $return = $item[2] }',
                                                                                                              'hashname' => '__ACTION1__',
                                                                                                              'lookahead' => 0
                                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                                   ],
                                                                                        'number' => '1',
                                                                                        'patcount' => 2,
                                                                                        'line' => 254,
                                                                                        'strcount' => 0,
                                                                                        'uncommit' => undef
                                                                                      }, 'Parse::RecDescent::Production' ),
                                                                               bless( {
                                                                                        'actcount' => 1,
                                                                                        'dircount' => 0,
                                                                                        'error' => undef,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'ldelim' => '/',
                                                                                                              'mod' => 'i',
                                                                                                              'description' => '/foreign key/i',
                                                                                                              'line' => 258,
                                                                                                              'hashname' => '__PATTERN1__',
                                                                                                              'lookahead' => 0,
                                                                                                              'rdelim' => '/',
                                                                                                              'pattern' => 'foreign key'
                                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                                     bless( {
                                                                                                              'line' => 259,
                                                                                                              'code' => '{ $return = \'\' }',
                                                                                                              'hashname' => '__ACTION1__',
                                                                                                              'lookahead' => 0
                                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                                   ],
                                                                                        'number' => '2',
                                                                                        'patcount' => 1,
                                                                                        'line' => 257,
                                                                                        'strcount' => 0,
                                                                                        'uncommit' => undef
                                                                                      }, 'Parse::RecDescent::Production' )
                                                                             ],
                                                                  'calls' => [
                                                                               'WORD'
                                                                             ]
                                                                }, 'Parse::RecDescent::Rule' ),
                              'statement' => bless( {
                                                      'impcount' => 0,
                                                      'line' => 16,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'statement',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 16,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'comment'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'number' => '0',
                                                                            'patcount' => 0,
                                                                            'line' => undef,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 17,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'use'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'number' => '1',
                                                                            'patcount' => 0,
                                                                            'line' => 17,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 18,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'set'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'number' => '2',
                                                                            'patcount' => 0,
                                                                            'line' => 18,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 19,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'drop'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'number' => '3',
                                                                            'patcount' => 0,
                                                                            'line' => 19,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 20,
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'create'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'number' => '4',
                                                                            'patcount' => 0,
                                                                            'line' => 20,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 1,
                                                                            'error' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => 21,
                                                                                                  'msg' => '',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'commitonly' => '',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Error' )
                                                                                       ],
                                                                            'number' => '5',
                                                                            'patcount' => 0,
                                                                            'line' => 21,
                                                                            'strcount' => 0,
                                                                            'uncommit' => 0
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'comment',
                                                                   'use',
                                                                   'set',
                                                                   'drop',
                                                                   'create'
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'reference_option' => bless( {
                                                             'impcount' => 0,
                                                             'line' => 177,
                                                             'changed' => 0,
                                                             'vars' => '',
                                                             'name' => 'reference_option',
                                                             'opcount' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'actcount' => 0,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/restrict/i',
                                                                                                         'line' => 177,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'restrict'
                                                                                                       }, 'Parse::RecDescent::Token' )
                                                                                              ],
                                                                                   'number' => '0',
                                                                                   'patcount' => 1,
                                                                                   'line' => undef,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 0,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/cascade/i',
                                                                                                         'line' => 178,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'cascade'
                                                                                                       }, 'Parse::RecDescent::Token' )
                                                                                              ],
                                                                                   'number' => '1',
                                                                                   'patcount' => 1,
                                                                                   'line' => 177,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 0,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/set null/i',
                                                                                                         'line' => 179,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'set null'
                                                                                                       }, 'Parse::RecDescent::Token' )
                                                                                              ],
                                                                                   'number' => '2',
                                                                                   'patcount' => 1,
                                                                                   'line' => 178,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 0,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/no action/i',
                                                                                                         'line' => 180,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'no action'
                                                                                                       }, 'Parse::RecDescent::Token' )
                                                                                              ],
                                                                                   'number' => '3',
                                                                                   'patcount' => 1,
                                                                                   'line' => 179,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'ldelim' => '/',
                                                                                                         'mod' => 'i',
                                                                                                         'description' => '/set default/i',
                                                                                                         'line' => 181,
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'lookahead' => 0,
                                                                                                         'rdelim' => '/',
                                                                                                         'pattern' => 'set default'
                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                bless( {
                                                                                                         'line' => 182,
                                                                                                         'code' => '{ $item[1] }',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'number' => '4',
                                                                                   'patcount' => 1,
                                                                                   'line' => 180,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' )
                                                                        ],
                                                             'calls' => []
                                                           }, 'Parse::RecDescent::Rule' ),
                              'UNIQUE' => bless( {
                                                   'impcount' => 0,
                                                   'line' => 304,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'UNIQUE',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'ldelim' => '/',
                                                                                               'mod' => 'i',
                                                                                               'description' => '/unique/i',
                                                                                               'line' => 304,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => 'unique'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'line' => 304,
                                                                                               'code' => '{ 1 }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'number' => '0',
                                                                         'patcount' => 1,
                                                                         'line' => undef,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => []
                                                 }, 'Parse::RecDescent::Rule' )
                            },
                 '_AUTOTREE' => undef,
                 'localvars' => '',
                 '_precompiled' => 1,
                 'namespace' => 'Parse::RecDescent::Parse::RecDescent::DDL::SQLT::Access',
                 '_AUTOACTION' => undef
               }, 'Parse::RecDescent' );
}