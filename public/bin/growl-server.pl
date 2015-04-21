#!/usr/bin/perl -w

#use lib '/Users/tm/.doc.env/bin/';

use IO::Socket;
use Digest::MD5 qw(md5_base64);
use Getopt::Long;
use File::Basename;
#use Crypt::CBCeasy;
use MIME::Base64;

my $options_file = ".growl-server";

my %option;
my %registered;

my $progname = basename ($0);
my $override_config;
my $imagefile;

sub Usage {
print <<EOT;
  Usage: $progname [-f config_file] [-h host] [-o port] [-p passphrase]
  
  Start the Growl server daemon which listens for messages from either
  the send-growl.pl command line utility or the growl.pl Irssi script.
 
  Default parameters are read from ~/$options_file.  Any other command line
  parameters override values read from the configuraiton file.

  -f : Override ~/$options_file with a different configuration file

  -h : Specify the hostname/IP to bind to.  Defaults to localhost.

  -o : Specify the port to listen on.  Defaults to 7106.

  -p : Specify the passphrase used for validating incoming messages.
       The same passphrase must be used by both the client and server.

EOT

  exit;
}

sub read_config {
  my $config = shift;

  open(OPTS, $config) || die "Cannot open $config\n";
  while (<OPTS>) {
    next if ( m/^#/);
    chomp;
    my ($key, $value) = split('=');
    next unless (defined($value));

    $option{$key} = $value;
  }

  close(OPTS);
}


  if (@ARGV) {
    Usage if ($ARGV[0] eq "-?");
    Usage if ($ARGV[0] eq "--help");
  }

  # See if the user wants to override the default config file
  Getopt::Long::Configure("pass_through");
  GetOptions("config|f=s", \$override_config); 
  Getopt::Long::Configure("no_pass_through");

  # Read the appropriate config file
  if (defined($override_config)) {
    unless (-f $override_config) {
      print "Error: configuration file $override_config not found\n";
      exit;
    }
    read_config($override_config);
    $options_file = $override_config;
  } else {
    $options_file = $ENV{'HOME'} . "/" . $options_file;
    read_config($options_file);
  }

  # Now read the command line options to override the config file defaults
  GetOptions ( \%option,
                "host|h=s",
		"port|o=i",
		"passphrase|p=s",
		"debug|d"
		);

  unless (defined($option{port})) {
    print "Error: port not specified\n";
    exit;
  }

  unless (defined($option{passphrase})) {
    print "Error: passphrase not specified\n";
    exit;
  }

  if (defined($option{debug})) {
    print "default settings read from $options_file\n";
    print "listen on " . $option{host} . "\n";
    print "listening on port " . $option{port} . "\n";
  }

  my $sock = new IO::Socket::INET (
			LocalHost => $option{host},
			LocalPort => $option{port},
			Proto => 'tcp',
			Listen => 10,
			Reuse => 1
			);

  die "Error creating socket: $!\n" unless $sock;

  while (my $accept = $sock->accept()) {
    while (my $rawdata = <$accept>) {
      chomp ($rawdata);

      if (defined($option{blowfish_key})) {
        $rawdata = decode_base64($rawdata);
        $rawdata =~ s/\s*$//;
        $rawdata = Blowfish::decipher($option{blowfish_key}, scalar($rawdata));
      }
      
      my ($cksum, $data) = split('\|', $rawdata, 2);

      unless ($cksum eq md5_base64($data, $option{passphrase})) {
        print "checksum failure [$cksum] [$data]\n";
      }
 
      my ($appname, $types, $type, $header, $msg, $cmd, $image) = 
          split('\|', $data);

      if (defined($option{debug})) {
        print "\n";
        print "App name: \"$appname\"\n";
        print "Types   : \"$types\"\n";
        print "Type    : \"$type\"\n";
        print "Header  : \"$header\"\n";
        print "Message : \"$msg\"\n";
        print "Command : \"$cmd\"\n";
        print "Image   : \"$image\"\n";
      }

      my $sticky = 0;
      if ($cmd eq "sticky") {
        $sticky = 1;
      } elsif ($cmd ne "notify") {
        print "Unrecognized command [$cmd]\n";
        next;
      }

      if (length($image)) {
        $imagefile = $ENV{HOME}.'/'.$option{"image.$image"}; 
        
        if (defined($imagefile)) {
          if (defined($option{debug})) {
              print "Image file : \"$imagefile\"\n";
            }

          unless (-f $imagefile) {
            print "warning: $imagefile not found\n";
            $imagefile = undef;
          }

        } else { # defined ($imagefile)
          print "warning: image.$image not defined\n";
        }
      } # length($image)

      $header =~ s/\\/\\\\/g;
      $header =~ s/"/\\"/g;
      system('/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier', '-message', "$msg", '-group', md5_base64("$msg"), '-title', "$header", "-appIcon", "$imagefile");

    } # <accept>
  } # sock->accept

  close ($sock);

