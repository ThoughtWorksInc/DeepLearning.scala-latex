@default_files = ('deeplearningscala2.tex');

add_cus_dep( 'glo', 'gls', 0, 'makeglo2gls' );

sub makeglo2gls {
    system("makeindex -l -s \"$_[0].ist\" -t \"$_[0].glg\" -o \"$_[0].gls\" \"$_[0].glo\"" );
}
