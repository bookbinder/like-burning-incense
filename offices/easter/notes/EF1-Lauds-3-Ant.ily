\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_150"
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
  Wor -- ship God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who is sea -- ted u -- pon the throne; sing to him in praise:
  A -- men, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8[ e] e dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4 \bar ","
  \allowBreak e8[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak e8
  \allowBreak cis([ e] dis4)
  \allowBreak \breathe
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b2~ s16 b\breve*7/16 e\breve*5/16 dis\breve*5/16
  r4 b4. cis4~ cis4 b
}
tenorNotesAnt = \relative g {
  e4. fis2 s16 dis\breve*7/16 gis\breve*5/16 b\breve*5/16
  gis4~ gis4. e4 gis2
}
bassNotesAnt = \relative c {
  cis4. b2~ s16 b\breve*7/16~ b\breve*5/16~ b\breve*5/16
  e4 gis,4.~ gis4~ gis2
}
