\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "17"
antKeysig = \key e \major
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
  Come to us, Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and may your pre -- sence be our peace;
  with hearts made per -- fect we shall re -- joice in your
  com -- pan -- ion -- ship for e -- ver.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4( e)
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak a
  \allowBreak a4( gis) \bar ","
  \allowBreak gis8
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak a[ gis fis]
  \allowBreak fis4
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak cis
  \allowBreak b
  \allowBreak b4
  \allowBreak cis8
  \allowBreak cis[ e fis e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*5/16 s16 s4 e4.~ e4~ e\breve*5/16~
  e4.~ e4. fis4 cis2~ cis\breve*5/16 s\breve*5/16
  cis2 b4
}
tenorNotesAnt = \relative g {
  b2 a\breve*5/16 s16 gis4 b4. cis4 b\breve*5/16~
  b4. cis4.~ cis4 a2 gis\breve*5/16 fis\breve*5/16
  a2 gis4
}
bassNotesAnt = \relative c {
  e2~ e\breve*5/16~ s16 e4~ e4.~ e4~ e\breve*5/16
  gis4. a4.~ a4 a,2 cis\breve*5/16 dis
  e2~ e4
}
