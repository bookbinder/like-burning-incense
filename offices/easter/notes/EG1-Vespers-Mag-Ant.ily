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
  I will send you the Spir -- it of truth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who comes from the Fa -- ther. When the Par -- a -- clete comes he
  will bear wit -- ness to me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 b cis[ e] dis b e4 e8 fis fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4
  \allowBreak r4 \bar "|"
  \allowBreak fis8
  \allowBreak dis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4
  \allowBreak gis
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s4 b2~ \breve*9/16~ s16 b2.~
  \breve*5/16 cis\breve*9/16~ 4. b4 gis2
}
tenorNotesAnt = \relative g {
  gis2 fis4 e2~ \breve*9/16 s16 dis2.~
  \breve*5/16 e\breve*9/16 a4. fis4~ 4 e
}
bassNotesAnt = \relative c {
  e2 b4 gis2 e\breve*9/16 s16 b'2.~
  \breve*5/16 a\breve*9/16~ 4. b4 cis2
}
