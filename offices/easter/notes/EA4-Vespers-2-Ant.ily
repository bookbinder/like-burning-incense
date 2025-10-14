\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_27_7-14"
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
  I be -- lieve that I shall see
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the good -- ness of the Lord in the land
  of the liv -- ing, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis fis[ gis] gis fis a gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak cis4( b)
  \allowBreak cis8
  \allowBreak b
  \allowBreak e[ fis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis a]
  \allowBreak a4 \bar "'"
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s4 s4. s16 s\breve*5/16 s2.
  s2 e2. cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 a4 b4. s16 gis\breve*5/16 fis2.
  a2~ 2.~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*5/16~ 4~ 4.~ s16 e\breve*5/16 dis2.
  cis2~ 2. a4 e'2
}
