\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
antKeysig = \key gis \minor
psalmnum = "Benedictus"
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
  Who -- e -- ver sees the Son
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and be -- lieves __ in him will live __ for e -- ver, and I shall
  raise him up on the last day, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis b e[ fis] gis gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[-- ais b ais]
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8[ e]
  \allowBreak fis[-- gis a! gis]
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak dis
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak cis[-- b]
  \allowBreak \breathe
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s2 s16 fis\breve*7/16 r4 e\breve*5/16
  cis\breve*5/16~ cis4 gis\breve*9/16 s4. b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 b2~ s16 b\breve*7/16 gis4 a!\breve*5/16~
  a!\breve*5/16 fis4 e\breve*9/16 fis4.~ fis4~ fis4 e
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e2 s16 dis\breve*7/16 e4 cis\breve*5/16
  a!\breve*5/16~ a4 cis\breve*9/16 dis4. b4 cis2
}
