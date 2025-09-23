\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_112"
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
  In the dark -- ness he dawns:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a light for up -- right hearts, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 b e4 e8 fis fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( e) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s\breve*5/16 s16 cis\breve*5/16~ cis e4 b2
}
tenorNotesAnt = \relative g {
  gis2. b\breve*5/16 s16 a\breve*5/16~ a~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e2.~ \breve*5/16 s16 a\breve*5/16 a, cis4 e2
}
