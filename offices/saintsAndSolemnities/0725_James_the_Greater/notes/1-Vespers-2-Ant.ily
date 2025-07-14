\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "38"
antKeysig = \key gis \minor
psalmnum = "Ps_126"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Then he said to them:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Stay a -- wake and pray that you may not be temp -- ted.
}
sopNotesAnt = \relative e' {
  e8 fis gis gis gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4^"Different psalm tone. Does it work?" s2 s16 s4. s\breve*8/16 cis4.~ cis4 b
}
tenorNotesAnt = \relative g {
  b4~ b2~ s16 b4. gis\breve*8/16~ gis4.~ gis2
}
bassNotesAnt = \relative c {
  gis'4 e2 s16 dis4. cis\breve*8/16~ cis4. gis2
}
