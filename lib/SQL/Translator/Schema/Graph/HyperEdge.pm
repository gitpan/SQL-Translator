package SQL::Translator::Schema::Graph::HyperEdge;

use strict;
use base qw(SQL::Translator::Schema::Graph::Edge);

use vars qw[ $VERSION ];
$VERSION = '1.60';

use Class::MakeMethods::Template::Hash (
    'array_of_objects -class SQL::Translator::Schema::Field' =>
      [qw( thisviafield thatviafield thisfield thatfield)],    #FIXME
    'array_of_objects -class SQL::Translator::Schema::Graph::Node' =>
      [qw( thisnode thatnode )],
    'object' =>
      [ 'vianode' => { class => 'SQL::Translator::Schema::Graph::Node' } ],
);

1;
