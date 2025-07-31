\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Eph_1_3-10"
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
  The she -- pherds went in haste
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and found Ma -- ry and Jo -- seph, with the child
  cra -- dled in a man -- ger.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e dis b cis4
  \noBreak \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak e[ fis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak gis([ b cis] b4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ e cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4~ gis4. s4 s4. s16 s4 e'2 cis\breve*7/16
  fis\breve*5/16 dis2 cis4.~ cis4
}
tenorNotesAnt = \relative g {
  e4~ e4. fis4 gis4.~ s16 gis4 b2 a\breve*7/16
  b\breve*5/16~ b2 a4. e4
}
bassNotesAnt = \relative c {
  cis4~ cis4. b4 e4.~ s16 e4~ e2~ e\breve*7/16
  dis\breve*5/16 b2 cis4.~ cis4
}
