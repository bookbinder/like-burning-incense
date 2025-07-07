\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
antKeysig = \key cis \minor
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
  The saints
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will re -- joice in glo -- ry, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis([ e] dis4)
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 b2. s16 gis4. cis b cis4~ cis b
}
tenorNotesAnt = \relative g {
  e4 fis2. s16 e4. gis2. e4 gis2
}
bassNotesAnt = \relative c {
  cis4 b2. s16 cis4. gis2.~ gis4~ gis2
}
