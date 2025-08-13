\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Magnificat"
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
  From heav -- en the Fa -- ther’s voice pro -- claimed:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  You are my Son, my be -- lo -- ved, in whom I take de -- light.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis
  \allowBreak b
  \allowBreak e
  \allowBreak fis
  \allowBreak fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak b4( gis)
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e([ fis] e4)
  \allowBreak e8
  \allowBreak dis
  \allowBreak b
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s4 s4 b2~ s16 2~ 2.
  cis2. gis4 a\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis4 gis e2~ s16 e2~ 2.~
  2.~ 4 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  e\breve*5/16 dis4 cis e2~ s16 e,2 gis2.
  a2. cis4~ cis\breve*5/16~ 4
}
