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
  His fa -- ther and mo -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  were full of won -- der at what was said a -- bout their child.
}
sopNotesAnt = \relative e' {
  r8 e8 gis4 gis8 a gis[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis
  \allowBreak a
  \allowBreak b
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b2. cis\breve*5/16 s16 e4.~ e2~ e2 cis4. gis4
}
tenorNotesAnt = \relative g {
  gis2. a\breve*5/16 s16 cis4. b2 e,2~ e4.~ e4
}
bassNotesAnt = \relative c {
  e2.~ e\breve*5/16~ s16 e4.~ e2~ << {\hideNotes e2 \unHideNotes} \new Voice { \voiceTwo gis,2 } >> a4. e4
}
