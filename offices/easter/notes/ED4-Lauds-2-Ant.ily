\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Isa_61_10--62_5"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  The Lord will make praise and jus -- tice blos -- som
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be -- fore all the na -- tions, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 dis[ e] cis cis[ b] e4 fis8 gis fis fis[ e] e4
  \noBreak \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis([ b] gis4)
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*12/16 cis\breve*7/16 s16 b\breve*5/16 cis\breve*5/16~ cis4 b2
}
tenorNotesAnt = \relative g {
  e\breve*12/16~ e\breve*7/16~ s16 e\breve*5/16~ e\breve*5/16 a4~ a gis
}
bassNotesAnt = \relative c {
  gis\breve*12/16 a\breve*7/16 s16 e\breve*5/16 a\breve*5/16~ a4 e'2
}
