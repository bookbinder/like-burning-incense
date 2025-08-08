\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
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
  Help -- less, he lay in a man -- ger;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  glo -- rious, he shone in the heav -- ens. Hum -- bled, he lived a -- mong men;
  en -- ter -- nal, he dwelt with the Fa -- ther.
}
sopNotesAnt = \relative e' {
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak b[ gis]
  \allowBreak gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ cis]
  \allowBreak cis4
  \allowBreak r4 \bar "|"
  \allowBreak gis'4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak gis[ b]
  \allowBreak gis4( fis) \bar ","
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis([ e] fis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak e[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s2 s16 cis2~ 2
  s2. dis\breve*9/16 cis\breve*5/16 b2~ 2. a4 gis4
}
tenorNotesAnt = \relative g {
  b\breve*8/16 cis4 b s16 a2~ 2
  gis4 e2 gis\breve*9/16 e\breve*5/16~ 2 dis2. e2
}
bassNotesAnt = \relative c {
  e\breve*8/16~ 2 s16 a2 a,
  cis2. b\breve*9/16 a\breve*5/16 e2 b'2.
  cis2
}
