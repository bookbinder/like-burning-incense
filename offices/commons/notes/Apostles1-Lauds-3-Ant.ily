\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "11"
antKeysig = \key e \major
psalmnum = "Ps_149"
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
  You are my friends, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  if you do what I com -- mand you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 e8 e8 fis[ gis] e dis cis4( b)
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak a4
  \allowBreak gis8
  \allowBreak fis[ gis e]
  \allowBreak e4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16 s2 s16 cis4~ cis2. b2. cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*8/16 fis2 s16 gis4 a2.~ a4. gis4. a4~ a4 gis
}
bassNotesAnt = \relative c {
  e\breve*8/16 dis2 s16 cis4 a2. e'2.~ e4~ e2
}
