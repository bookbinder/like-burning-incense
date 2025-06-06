\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "16"
antKeysig = \key e \major
psalmnum = "Isa_40_10-17"
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
  Like a shep -- herd
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he will ga -- ther the lambs in his arms and car -- ry
  them close to his heart, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis8 gis[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis4( b) \bar "'"
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2. s16 s\breve*7/16 cis\breve*5/16~  cis4. b2 s\breve*5/16
  cis4 b2
}
tenorNotesAnt = \relative g {
  gis4 a2. s16 b\breve*7/16 a\breve*5/16~ a4. fis2 gis\breve*5/16
  a4~ a gis
}
bassNotesAnt = \relative c {
  e4~ e2.~ s16 e\breve*7/16 a\breve*5/16 a,4. b2 e\breve*5/16~ e4~ e2
}
