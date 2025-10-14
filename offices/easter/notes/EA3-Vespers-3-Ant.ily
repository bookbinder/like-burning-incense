\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Rev_4_11_and_5_9,_10,_12"
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
  Let all cre -- a -- tion serve you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for all things came in -- to be -- ing
  at your word, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 fis[ gis] gis b4 gis8 fis[ e dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis[ gis']
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak e4( dis) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*8/16 s2. s16 b\breve*7/16 gis2.~
  \breve*5/16 cis4~ 4 b
}
tenorNotesAnt = \relative g {
  b\breve*8/16~ 2. s16 fis\breve*7/16 e2.
  gis\breve*5/16 e4 gis2
}
bassNotesAnt = \relative c {
  gis'\breve*8/16 dis4. b4.~ s16 b\breve*7/16 cis2.
  gis\breve*5/16~ 4~ 2
}
