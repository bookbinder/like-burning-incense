\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_114"
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
  Christ our King will come to us,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lamb of God fore -- told by John.
}
sopNotesAnt = \relative e' {
  cis8[ e] dis e4 dis8 fis[ e] dis cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak b8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak dis[ fis e]
  \allowBreak dis
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 cis4. s16 gis4. cis4~ cis4. b2 gis2
}
tenorNotesAnt = \relative g {
  e\breve*9/16~ e4.~ s16 e4.~ e4 a4. fis2~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*9/16 a4. s16 e4. a4~ a4. b2 cis2
}
