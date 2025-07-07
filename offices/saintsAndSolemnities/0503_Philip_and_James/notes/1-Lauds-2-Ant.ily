\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key gis \minor
psalmnum = "Dan_3_57-88,_56"
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
  Have I been with you all this time
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and still you do not know me? Phi -- lip, who -- e -- ver sees me,
  sees my Fa -- ther al -- so, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis b4 cis8[ e] e dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8[ dis]
  \allowBreak dis4
  \allowBreak r4 \bar ","
  \allowBreak dis8[ e cis]
  \allowBreak cis4 \bar "'"
  \allowBreak cis8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis \bar "'"
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak fis[ e]
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s4 s4. s\breve*5/16 s16 dis4 cis4 b2.
  s2. cis\breve*5/16 \parenthesize b4 dis4. cis4.~
  cis\breve*5/16~ cis4~ cis b
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis4 e4. fis\breve*7/16 s16 e4 fis2.
  gis2. s\breve*5/16 b4~ b4. gis4.~ gis\breve*5/16~ gis4~ gis2
}
bassNotesAnt = \relative c {
  e\breve*5/16 dis4 cis4. b\breve*7/16~ s16 b4~ b2.
  e2.~ <cis e>\breve*5/16 dis4 b4. cis4. e\breve*5/16 cis4 gis2
}
