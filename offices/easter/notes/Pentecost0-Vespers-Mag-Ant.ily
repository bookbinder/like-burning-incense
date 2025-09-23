\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "42"
antKeysig = \key cis \minor
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
  Come, Ho -- ly Spir -- it,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  fill the hearts of all be -- liev -- ers and set them
  on fire with your love. Though they spoke ma -- ny
  dif -- ferent lan -- gua -- ges, you u -- nit -- ed the na -- tions in
  pro -- fess -- ing the same faith, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8([-- dis e dis] cis4) b8[ cis] dis dis[ cis] cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak e8[ fis]
  \allowBreak gis
  \allowBreak fis[-- gis a gis]
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak gis[ b]
  \allowBreak b4 \bar "'"
  \allowBreak b8
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis
  \allowBreak gis4( fis)
  \allowBreak r4 \bar "|"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis8([ gis] fis4)
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak cis,4
  \allowBreak cis8
  \allowBreak dis
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak b
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak b
  \allowBreak cis4
  \allowBreak cis \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  b2. s4. s2 s16 b4. cis\breve*8/16 e4~ 4.~
  2~ 2 b2.~ 4 cis2.~
  4~ 2. s\breve*7/16 b4~ 2~
  4~ 4. a4 gis2
}
tenorNotesAnt = \relative g {
  e2. fis4. gis2~ s16 gis4. a\breve*8/16 b4 gis4.~
  gis2 e dis2.~ 4 e2.
  fis4 a2. gis\breve*7/16 fis4~ 2~
  4 e4. fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis2. dis4. e2~ s16 e4.~ \breve*8/16~ 4~ 4.~
  e2
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1.5 . 0)) ~
  << {\hideNotes e2 \unHideNotes }
     \new Voice { \voiceTwo gis,2} >>
  b2.~ 4 a2.~
  4~ 2. e'\breve*7/16 dis4 gis,2
  cis4~ 4.~ 4~ 2
}
