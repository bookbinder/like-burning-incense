\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "40"
antKeysig = \key gis \minor
psalmnum = "Dan_3_57-88,_56"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Ma -- ry has giv -- en birth to our Sav -- ior.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  John the Bap -- tist saw him and cried out: This is the Lamb of God,
  who takes a -- way the sins of the world, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak cis4 \bar ","
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis[-- ais! b ais]
  \allowBreak gis
  \allowBreak ais4 \bar "'"
  \allowBreak ais8
  \allowBreak ais[ b]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e([ fis] gis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak gis[ cis,]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*10/16^"Different psalm tone." s2 s16 dis\breve*5/16~
  dis2 s4 cis4~ cis2 fis\breve*5/16 fis4. dis4 s2
  cis2. b4 dis4. b4 gis2
}
tenorNotesAnt = \relative g {
  b\breve*10/16~ b2~ s16 b\breve*5/16~
  b2 gis4
  e
  \shape #'((0 . 0) (0 . 0) (-0 . 0) (-0 . 0)) ~
  << {\hideNotes \once \override NoteColumn.force-hshift = -1 e2 \unHideNotes }
     \new Voice {\voiceOne gis2 } >>
  b\breve*5/16 cis4. b~ b
  gis4 e gis fis~ 4.~ 4~ 4 e
}
bassNotesAnt = \relative c {
  e\breve*10/16 dis2 s16 b\breve*5/16~
  b2 cis e dis\breve*5/16 fis4. gis dis
  cis2. dis4 b4. gis4 cis2
}
