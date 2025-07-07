\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "12"
antKeysig = \key e \major
psalmnum = "Ps_115"
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
  The Lord will come; 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he is true to his word. If he seems
  to de -- lay, keep watch for him, for he will sure -- ly come,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 b8 b[ cis] e e([ fis] e4)
  \noBreak \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak b
  \allowBreak a([ gis] fis4)
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis4( b) \bar "'"
  \allowBreak b8
  \allowBreak cis[ e]
  \allowBreak fis([ gis] fis4 e8)
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s8 b8~ b4. cis2. s16 e2 dis2 cis4 b2 cis\breve*5/16 b2.
  gis2. s2 s8 cis4~ cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
  fis4 gis4. a2. s16 b2~ b2 e,4~ e2~ e\breve*5/16 gis4. dis4. e2.
  fis\breve*5/16 gis4 a\breve*5/16 gis4
}
bassNotesAnt = \relative c {
  dis4 e4. a2. s16 e2 b2 a4 gis2 a\breve*5/16 b2. cis2. dis\breve*5/16 e4~
  e\breve*5/16~ e4
}
