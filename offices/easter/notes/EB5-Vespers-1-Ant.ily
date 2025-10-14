\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Ps_72_2-11"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  God has ap -- point -- ed him
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to judge the liv -- ing and the dead, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 fis8 gis ais[ b] ais ais4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ais8
  \allowBreak gis[ ais]
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  dis2 fis2. s16 s4. cis2 b4. cis4~ 4 b
}
tenorNotesAnt = \relative g {
  b2 cis2.~ s16 cis4. gis2~ 4. e4 gis2
}
bassNotesAnt = \relative c {
  gis'2 fis2. s16 e4.~ 2 gis,4.~ 4~ 2
}
