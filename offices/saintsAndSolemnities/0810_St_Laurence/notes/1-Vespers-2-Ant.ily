\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_116_10-19"
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
  Bles -- sed Law -- rence cried out:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I re -- joice great -- ly be -- cause I have been con -- sid -- ered wor -- thy
  to be a sac -- ri -- fi -- cial vic -- tim for Christ.
}
sopNotesAnt = \relative e' {
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak e4
  \allowBreak b8
  \allowBreak cis[ gis']
  \allowBreak gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak a4
  \allowBreak a8
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis4( cis4) \bar "||"
}
altoNotesAnt = \relative c' {
  b2.~^"Different psalm tone. Does it work?" b2.~ s16 b4 cis\breve*12/16~
  cis4. e2. cis\breve*5/16~ cis2 gis
}
tenorNotesAnt = \relative g {
  gis2.~
  gis2.
  s16 e4~ e\breve*12/16
  a4.~ a2. gis\breve*5/16 fis2~ fis4( e) \bar "||"
}
bassNotesAnt = \relative c {
  s2. \tieUp e2.
  \shape #'((2 . -0.5) (2 . -0.5) (-1 . -0.5) (0 . -0.5))
  ~ s16 \tieDown
  << { \hideNotes e4 \unHideNotes } \new Voice { \voiceTwo e,4 } >>
  a\breve*12/16~
  a4. cis2.~ cis\breve*5/16 a2 cis
}
