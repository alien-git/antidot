# getSEdf.pl
#
# Get the space usage on all storage elements on the current site
# With arguments, it will try to get the space usage only for the
# given SEs.
#
# Catalin Cirstoiu <Catalin.Cirstoiu@cern.ch>
# Version 0.1
#
# 29/09/2006 - first version


use AliEn::Util;
use AliEn::UI::Catalogue::LCM::Computer;
use strict;

sub dumpStatus {
	my $status = shift;
	my $message = shift;

	print "SCRIPTRESULT\tStatus\t$status".($message ? "\tMessage\t$message" : "")."\n";
}

my $cat = AliEn::UI::Catalogue::LCM::Computer->new({silent=>1, debug=>0}) 
	or dumpStatus(1, "Failed to initialize AliEn::UI::Catalogue::LCM::Computer.") and exit(-2);
my @SEs = ();
if(@ARGV){
	push(@SEs, @ARGV);
}else{
	push(@SEs, @{$cat->{CONFIG}->{SEs_FULLNAME}});
}

if(! @SEs){
	dumpStatus(2, "No SEs defined for the site");
}

#use Data::Dumper;
#print Dumper($cat->{CONFIG}->{SEs_FULLNAME});
#print Dumper(@data);

for my $s (@SEs){
	my @data = $cat->execute("df", $s);
	if(@data){
		my $se = $data[0];
		my $size_gb = ($se->{size} == -1 ? -1 : $se->{size} / 1024.0 / 1024.0);
		my $used_gb = ($se->{used} == -1 ? -1 : $se->{used} / 1024.0 / 1024.0);
		my $avail_gb= ($se->{available} == -1 ? -1 : $se->{available} / 1024.0 / 1024.0);
		my $usage_p = ($size_gb == -1 ? -1 : ($size_gb == 0 ? 0 : $used_gb * 100.0 / $size_gb));
		my $n_files = $se->{files};
		my $type    = $se->{type};
		my $se_name = $se->{name};
		my @l_se_name = split("::", $se_name); $l_se_name[0]=uc($l_se_name[0]); $se_name=join("::", @l_se_name);
		print "$se_name\t".
			"size_gb\t$size_gb\tused_gb\t$used_gb\tavail_gb\t$avail_gb\t".
			"usage\t$usage_p\tn_files\t$n_files\ttype\t$type\tStatus\tOK\n";
	}else{
		print "$s\tStatus\tNot responding\n";
	}
}

dumpStatus(0);

