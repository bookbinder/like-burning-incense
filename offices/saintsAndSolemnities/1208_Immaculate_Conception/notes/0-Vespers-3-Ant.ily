\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "45"
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
  Hail, Ma -- ry, full of grace,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord is with you.
}
sopNotesAnt = \relative e' {
  e4 b8 cis cis[ gis'] a gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis8
  \allowBreak e([ fis] e4)
  \allowBreak dis8
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b2 a4. b4.~ s16 b4~ b4. gis2
}
tenorNotesAnt = \relative g {
  e2~ e4.~ e4.~ s16 e4 fis4.~ fis4 e
}
bassNotesAnt = \relative c {
  gis2 a4. e4. s16 gis4 b4. cis2
}
