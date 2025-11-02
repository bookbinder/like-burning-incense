\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "16"
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
  I know my sheep
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and they fol -- low me; I give them e -- ter -- nal life,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  b4 cis8[ e] cis b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4 e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s16 e4. cis\breve*7/16~ \breve*8/16 b2
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 s16 b4. a\breve*7/16~ \breve*8/16~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*9/16~ s16 e4. a\breve*7/16 a,\breve*8/16 e'2
}
