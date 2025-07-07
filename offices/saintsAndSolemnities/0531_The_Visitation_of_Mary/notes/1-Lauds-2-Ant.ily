\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
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
  When E -- li -- za -- beth heard Ma -- ry's gree -- ting,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the in -- fant in her womb leaped for joy, and she was filled with the
  Ho -- ly Spi -- rit. \lr "[E.T. Al" -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
  cis8 dis e dis cis dis([ e] dis4) fis8 e e[ dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak cis
  \allowBreak e
  \allowBreak dis([ e] dis4)
  \allowBreak cis8([ gis' fis] gis4)
  \allowBreak gis8[ b]
  \allowBreak cis([ b] gis4) \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis8([ gis] fis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis([ e] fis[ e cis])
  \allowBreak cis4 \bar "||"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s\breve*11/16 s16 s4. s4
  s2 cis\breve*5/16 fis4 e\breve*7/16 b2. dis4. cis\breve*5/16~
  cis4~ cis8 a4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis\breve*11/16 s16 gis4. e4
  fis2 gis\breve*5/16 b4 gis\breve*7/16 fis2. b4. gis\breve*5/16
  e4~ e8 fis4~ fis e
}
bassNotesAnt = \relative c {
  e\breve*5/16 b\breve*11/16~ s16 b4.~ b4~
  b2 e\breve*5/16 dis4 cis\breve*7/16 dis2. b4. cis\breve*5/16~
  cis4~ cis8~ cis4~ cis2
}
