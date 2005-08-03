#########################################################################
#  OpenKore - Player actor object
#  Copyright (c) 2005 OpenKore Team
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
#
#  $Revision$
#  $Id$
#
#########################################################################
##
# MODULE DESCRIPTION: Player actor object
#
# All members in %players are of the Actor::Player class.
#
# Actor.pm is the base class for this class.
package Actor::Player;

use strict;
use Actor;
use Globals;

our @ISA = qw(Actor);

sub new {
	return bless({type => 'Player'});
}

sub selfString {
	my ($self) = @_;

	return $self->{sex} ? 'himself' : 'herself';
}

##
# $actor->job
#
# Returns the job string (e.g. "Knight") of the actor.
sub job {
	my ($self) = @_;

	return $jobs_lut{$self->{jobID}};
}

1;
