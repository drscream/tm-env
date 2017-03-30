#!/usr/bin/perl -w
#
# Copyright (C) 2009 Bruce Pennypacker
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  
# 02110-1301, USA.

use IO::Socket;
use Digest::MD5 qw(md5_base64);
use Getopt::Long;
use File::Basename;
use Crypt::CBCeasy;
use MIME::Base64;

my $options_file = ".send-growl";

my %option;

my $progname = basename ($0);
my $override_config;

sub Usage {
  print <<EOT;
  Usage: $progname [-h host] [-o port] [-n appname] [-s types] [-t type] 
         [-m message] [-r header] [-p passphrase] [-c 0/1] [-i image]

  Defaults for all parameters can be set in ~/$options_file.  Command line
  parameters will override values from the configuration file.

  -h : Host running growl-server.pl to send the notification to.

  -o : Port that growl-server.pl is listening on.

  -n : The Growl application name.  This name will appear in the Growl
       System Preferences application list.

  -s : A comma-delimited list of all the notificaiton types that Growl
       can expect.  Make sure to quote the string if any spaces are used.

  -t : The type for this specific Growl message.  Must be one of the 
       types defined by -s or in ~/$options_file.

  -m : The message to display

  -r : The header of the message to display

  -p : The passphrase used to verify the message.  Must match the passphrase
       used by growl-server.pl

  -c : Specifies if a message is "sticky" or not.  If set to 1 then Growl
       will keep the message on the screen until you click on it.

  -i : The name of an image to use as an icon in the message.  This must
       correspond to the name of an image defined in ~/.growl-server on
       the host running growl-server.pl.
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
  my $status = GetOptions ( \%option,
		"host|h=s",
		"port|o=i",
		"appname|n=s",
		"types|s=s",
		"type|t=s",
		"header|r=s",
		"msg|m=s",
		"passphrase|p=s",
		"sticky|c=i",
		"image|i=s",
                "debug|d"
		);
  
  unless (defined($option{host})) {
    print "Error: host not specified\n";
    exit;
  }

  unless (defined($option{port})) {
    print "Error: port not specified\n";
    exit;
  }

  unless (defined($option{passphrase})) {
    print "Error: passphrase not specified\n";
    exit;
  }

  unless (defined($option{msg})) {
    print "Error: msg not specified\n";
    exit;
  }

  unless (defined($option{appname})) {
    print "Error: App Name not specified\n";
    exit;
  }

  unless (defined($option{header})) {
    print "Error: header not specified\n";
    exit;
  }

  unless (defined($option{type})) {
    print "Error: message type not specified\n";
    exit;
  }

  unless (defined($option{types})) {
    print "Error: message types not specified\n";
    exit;
  }

  my $sock = new IO::Socket::INET (
			PeerAddr => $option{host},
			PeerPort => $option{port},
			Proto => 'tcp',
			);

  die "Error creating socket: $!\n" unless $sock;

  # Figure out if this is a sticky message or regular notification
  my $cmd = ( $option{sticky} ) ? "sticky" : "notify";

  # Pack up everything we need into a single string to send to the server
  my $msg = $option{appname} . "|" . $option{types} .  "|" . $option{type} .
         "|" . $option{header} . "|" . $option{msg} . "|" . $cmd .
         "|" . $option{image};
   
  # Calculate a checksum & add it to what we're sending
  my $cksum = md5_base64($msg, $option{passphrase});

  # Add it to the front - easier to process in the server that way
  $msg = "$cksum|$msg";

  if (defined($option{debug})) {
    print "$msg\n";
  }

  if (defined($option{blowfish_key})) {
    $msg = Blowfish::encipher($option{blowfish_key}, $msg);
    $msg = encode_base64($msg);
    $msg =~ s/\n//g;
    if (defined($option{debug})) {
      print "Blowfish: $msg\n";
    }
  }

  # Send it!
  print $sock "$msg\n";

  close ($sock);
