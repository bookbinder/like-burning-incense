\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
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
  I am the liv -- ing bread
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  come down from heav -- en; a -- ny -- one who eats this bread
  will live for e -- ver; the bread that I will give is
  my flesh, for the life of the world,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 cis8 b e fis fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8[ fis]
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak e[ dis cis]
  \allowBreak cis4
  \allowBreak r4 \bar "|"
  \allowBreak gis'8
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak gis--[ b gis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak dis([ e] fis4)
  \allowBreak e8[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "|"
  \allowBreak r8
  \allowBreak cis8
  \allowBreak cis--[ dis e dis]
  \allowBreak cis
  \allowBreak dis
  \allowBreak cis
  \allowBreak b4
  \allowBreak e8
  \allowBreak e[ gis]
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis--[ e]
  \allowBreak \breathe
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s2. s16 s4. s4. s2 cis\breve*7/16
  dis2. cis gis2 s4 s\breve*10/16
  b4 cis2. b2~ \breve*5/16 gis2
}
tenorNotesAnt = \relative g {
  gis2. b~ s16 b4. gis e2~ \breve*7/16
  gis2. fis~ 4 e fis gis\breve*10/16
  e4~ 2.~ 2 fis\breve*5/16~ 4 e
}
bassNotesAnt = \relative c {
  e2.~ e s16 b4. cis4.~ 2~ \breve*7/16
  b2. a cis2 dis4 e\breve*10/16~
  << { \hideNotes \once \override NoteColumn.force-hshift = 0
     e4 \unHideNotes }
     \new Voice { \voiceTwo gis,4 } >>
  a2. e2 b'\breve*5/16 cis2
}
