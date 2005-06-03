#!/usr/local/bin/perl

# Stopping script for ML
# v0.00

my $ALIEN_ROOT = "/opt/alien";

system("$ALIEN_ROOT/java/MonaLisa/Service/CMD/ML_SER stop");

