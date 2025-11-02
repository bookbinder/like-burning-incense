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
  Our cru -- ci -- fied and ri -- sen Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has re -- deemed us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] cis cis b cis[ gis'] gis fis([ gis] fis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak e
  \allowBreak dis--[ e]
  \allowBreak fis
  \allowBreak \breathe
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*10/16 cis\breve*6/16 s16 b2. gis2
}
tenorNotesAnt = \relative g {
  e\breve*10/16 fis\breve*6/16~ s16 fis4 dis fis~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*10/16 a\breve*6/16 s16 b2. cis2
}
