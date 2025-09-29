\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "14"
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
  The Lord said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Do not think that I have come to a -- bol -- ish the law and
  the pro -- phets; I have come not to a -- bol -- ish but to
  ful -- fill them.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ fis] fis4( e)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[ a]
  \allowBreak gis
  \allowBreak a
  \allowBreak b[ gis]
  \allowBreak gis4
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a[ gis fis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b2^"Different psalm tone. Does it work?" gis\breve*5/16 s16 b2 cis\breve*10/16~ cis2
  e2.~ 4 cis\breve*12/16~ 4 b2
}
tenorNotesAnt = \relative g {
  e2~ \breve*5/16~ s16 e2~ \breve*10/16 a2
  gis4 b2~ 4 a\breve*12/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e2~ \breve*5/16 s16 e,2 a\breve*10/16~ 2
  e'2. gis4 a\breve*12/16 a,4 e'2
}
