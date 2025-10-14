\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "39"
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
  Who -- ev -- er be -- lieves in the Son
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  pos -- sess -- es e -- ter -- nal life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis e[ dis] cis b cis([ dis] e4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak cis8[ b]
  \allowBreak cis[ e]
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*14/16 s16 b4. cis4 b r4 cis4~ 4. b4
}
tenorNotesAnt = \relative g {
  e\breve*14/16 s16 fis4. e4 fis4~ 4 gis4~ 4.~ 4
}
bassNotesAnt = \relative c {
  cis\breve*14/16 s16 b4.~ 4~ 4 dis e cis4. gis4
}
