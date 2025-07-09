\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_122"
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
  You are all beau -- ti -- ful, O Ma -- ry;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in you there is no trace of o -- ri -- gi -- nal sin.
}
sopNotesAnt = \relative e' {
  e4 e8 gis[ a] \allowBreak gis
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak dis([ e] fis4)
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  cis4.~ cis4~ cis2~ cis4~ cis4.~ s16 cis\breve*5/16 b4~ b2~
  b4. gis2
}
tenorNotesAnt = \relative g {
  gis4. e4 a2 gis4 e4. s16 fis\breve*5/16~ fis4 dis2~
  dis4. e2
}
bassNotesAnt = \relative c {
  cis4.~ cis4~ cis2~ cis4~ cis4. s16 a\breve*5/16 b4~ b2
  gis4. cis2
}
