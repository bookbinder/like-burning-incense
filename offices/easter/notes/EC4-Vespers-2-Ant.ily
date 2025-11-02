\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "55"
antKeysig = \key gis \minor
psalmnum = "Ps_127"
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
  Whe -- ther we live or die,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  we are the Lord's, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 fis gis b[ cis] b gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak ais4 \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak ais[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*11/16 s16 fis2 dis
}
tenorNotesAnt = \relative g {
  b\breve*11/16 s16 cis2~ 4 b
}
bassNotesAnt = \relative c {
  gis'\breve*11/16 s16 fis4 dis gis2
}
