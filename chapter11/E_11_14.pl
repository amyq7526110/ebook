In the Perl script "test.pl":
...
my $WEBROOT = <WEBROOT_PATH>;
...
To force variable substitution try:
$export WEBROOT_PATH=/usr/local/webroot
$sed 's/<WEBROOT_PATH>/$WEBROOT_PATH/' < test.pl > out
But this just gives:
my $WEBROOT = $WEBROOT_PATH;
However:
$export WEBROOT_PATH=/usr/local/webroot
$eval sed 's%\<WEBROOT_PATH\>%$WEBROOT_PATH%' < test.pl > out
# ====

That works fine, and gives the expected substitution:

my $WEBROOT = /usr/local/webroot;


 ### Correction applied to original example by Paulo Marcel Coelho Aragao.
