\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_117"
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
  Is -- ra -- el,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  pre -- pare your -- self to meet the Lord, for he is co -- ming.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak a4( gis) \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2. s16 cis2~ cis4. b\breve*5/16 cis4 gis2
}
tenorNotesAnt = \relative g {
  b2. s16 a2~ a4. e\breve*5/16~ e4~ e2
}
bassNotesAnt = \relative c {
  e2.~ s16 e2~ e4.~ e\breve*5/16 a,4 e2
}
