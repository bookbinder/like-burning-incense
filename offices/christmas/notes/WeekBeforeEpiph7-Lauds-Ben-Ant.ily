\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "11"
antKeysig = \key e \major
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
  He is the one of whom it has been writ -- ten:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Christ is born in Is -- ra -- el; his king -- dom will last for -- ev -- er.
}
sopNotesAnt = \relative e' {
  \allowBreak e4
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis
  \allowBreak b
  \allowBreak e4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8[ gis]
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak fis[-- e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b2 s4 gis\breve*5/16 cis2 s16 e4.~ 4. b\breve*5/16~
  4. cis b2
}
tenorNotesAnt = \relative g {
  gis2 fis4 e\breve*5/16~ 2~ s16 4.~ 4. dis\breve*5/16
  e4. a4.~ 4 gis
}
bassNotesAnt = \relative c {
  e2 dis4 cis\breve*5/16 a2 s16 gis4. a4. b\breve*5/16
  e4.~ 4.~ 2
}
