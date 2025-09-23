\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "45"
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
  I am the way,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the truth and the life; no one comes to the Fa -- ther
  ex -- cept through me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 cis8 e dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak b8
  \allowBreak cis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4 \bar ","
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis
  \allowBreak cis
  \allowBreak b
  \allowBreak cis
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s4. s16 s2 b4 cis4. b2 gis2.
  b4~ 4.~ 4 gis2
}
tenorNotesAnt = \relative g {
  gis2 fis4. s16 e2 dis4 e4.~ 2~ 2.
  fis4 dis4. fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis2~ 4.~ s16 cis2 b4 a4. gis2 cis2.
  b4~ 4.~ 4 cis2
}
