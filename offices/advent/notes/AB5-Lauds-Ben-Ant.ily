\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "45"
antKeysig = \key cis \minor
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
  I will help you, says the Lord.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I am your Sa -- vior, the Ho -- ly One of Is -- ra -- el.
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis cis] cis4 cis8[ e] e fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*10/16 s4 s16 e2 cis\breve*5/16 b2 gis  
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 b4 s16 gis2 a\breve*5/16 fis2~ fis4 e
}
bassNotesAnt = \relative c {
  e\breve*10/16 dis4 s16 cis2 a\breve*5/16 b2 cis
}
