\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "56"
antKeysig = \key gis \minor
psalmnum = "Magnificat"
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
  This was the wit -- ness of John the Bap -- tist:  
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  The One who comes af -- ter me ex -- is -- ted be -- fore me.
}
sopNotesAnt = \relative e' {
  cis8[ e] dis b cis[ gis'] gis fis gis([ b] gis4) gis8 gis[ fis] fis4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak dis[ fis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4( fis) \bar "'"
  \allowBreak fis8
  \allowBreak e4
  \allowBreak dis8
  \allowBreak cis
  \allowBreak b[ dis]
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*13/16 dis\breve*5/16 b\breve*7/16 s16
  e4( dis4.) s2 b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*8/16 b\breve*5/16~ b\breve*5/16 dis,\breve*7/16 s16
  gis4( b4.) gis2 dis4 e2
}
bassNotesAnt = \relative c {
  e\breve*8/16~ e\breve*5/16 b\breve*5/16~ b\breve*7/16~ s16
  b4~ b4. cis2~ cis4~ cis2
}
