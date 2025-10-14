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
  Be -- lieve me,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  it is for your own good that I am go -- ing. If
  I do not go the Par -- a -- clete will not come,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis gis[ a gis] fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak cis[ b]
  \allowBreak b4
  \allowBreak cis8
  \allowBreak e4
  \allowBreak cis8[ e]
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "|"
  \allowBreak r8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak a([ gis] fis4)
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s4 s16 s2 s\breve*5/16 s2 dis\breve*5/16
  s2 s4 s4 s4. s4 s4 cis\breve*7/16 a4 gis
}
tenorNotesAnt = \relative g {
  b\breve*5/16 a4 s16 gis2 fis\breve*5/16 gis2 b\breve*5/16
  gis2 a4 cis4( a4.) b4 gis e\breve*7/16~ 2
}
bassNotesAnt = \relative c {
  e\breve*5/16~ 4~ s16 e2 dis\breve*5/16 cis2 b\breve*5/16
  e2~ 4~ 4~ 4.~ 2~
  << { \hideNotes
       \once \override NoteColumn.force-hshift = 0
       e\breve*7/16 \unHideNotes }
     \new Voice {\voiceTwo a,\breve*7/16 } >> e2
}
