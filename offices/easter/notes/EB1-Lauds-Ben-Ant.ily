\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Benedictus"
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
  With your hand,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  touch the mark of the nails; doubt no long -- er,
  but be -- lieve, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 fis fis4( e)
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak gis8[ b]
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis
  \allowBreak fis([ gis a gis] fis4) \bar ","
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak a([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative e' {
  s2. s16 gis4. e2 cis2.~ 4.
  e\breve*5/16 cis4~ 4.~ 4 b2
}
tenorNotesAnt = \relative g {
  b4 a4( gis) s16 b4.~ 2 a2.~ 4.
  gis\breve*5/16 r4 a4.~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e2.~ s16 e4. gis2 a2. a,4.
  cis\breve*5/16 fis4 a4. a,4 e'2
}
