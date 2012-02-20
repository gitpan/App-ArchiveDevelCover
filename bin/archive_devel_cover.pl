#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;

# ABSTRACT: script to archive Devel::Cover reports
# PODNAME: archive_devel_cover.pl

use App::ArchiveDevelCover;
App::ArchiveDevelCover->new_with_options->run;



=pod

=head1 NAME

archive_devel_cover.pl - script to archive Devel::Cover reports

=head1 VERSION

version 1.000

=head1 SYNOPSIS

  ~/perl/Some-Project$ archive_devel_cover.pl --project Some-Project --from cover_db/ --to /var/www/coverage_reports/some_project/

=head1 DESCRIPTION

Do you want to see how your test coverage (as reported by the wonderful L<Devel::Cover>) changes over time? If yes, then give C<archive_devel_cover.pl> a try!

C<archive_devel_cover.pl> will copy your most current coverage report into an archive and set up a small index page, showing the most relevant (IMO) metrics and a "trend" (did you cover more or less code since the last run?).

B<NOTE:> Currently there is nearly no input checking implemented, so if you use C<archive_devel_cover.pl> on directories that contain other stuff than what's expected, strange things might happen...

=head1 USAGE

  ~$ C<archive_devel_cover.pl> --from path/to/cover_db --to target/dir

This statement will copy the contents of F<path/to/cover_db> (which should be the result of a Devel-Cover testrun) into a directory in F<target/dir> named like the ISO8601 formatted date of the test run (eg. C<2012-02-26T00:32:42>). The values for statement coverage, subroutine coverage and total coverage are stored in a very basic database (read: CSV text file) for later comparison. A link to the current run is added to the file F<index.html>, together with the total coverage metrics and a trend value.

=head3 --from dir

The directory containing the HTML report generated by Devel::Cover.

=head3 --to dir

The directory that contains the collection of all coverage reports for this project.

=head3 --project name [optional]

The name of the project you're archiving. Currently only used in the generated HTML report. Defaults to 'unnamed project'.

=head1 AUTHOR

Thomas Klausner <domm@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Thomas Klausner.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

