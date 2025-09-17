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
  Je -- sus said to his dis -- ci -- ples:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Bring me some of the fish you have caught. Si -- mon
  Pe -- ter went a -- board and hauled a -- shore the net,
  full of large fish, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis[ e] e dis e fis[ gis fis] fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis
  \allowBreak b
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis[-- gis]
  \allowBreak gis4( cis,4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*8/16 b\breve*5/16 s16 gis\breve*6/16 cis2
  gis2 b4.~ 4. s4 gis2. cis4.~
  2 b\breve*5/16 a4~ 4.~ 4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*8/16 dis\breve*5/16 s16 e\breve*6/16~ 2~
  2~ 4. fis4.~ 4 e2.~ 4.~
  2~ \breve*5/16 cis4~ 4. fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis\breve*8/16 b\breve*5/16 s16 cis\breve*6/16 a2
  e2 gis4. b dis4 cis2. a4.~
  2 e\breve*5/16 a4~ 4. b4 cis2
}
