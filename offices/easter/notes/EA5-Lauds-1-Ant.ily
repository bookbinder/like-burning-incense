\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_57"
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
  Be e -- xal -- ted, O God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  high a -- bove the hea -- vens, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis gis4 fis8 e fis([ gis] fis4)
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak b[ gis]
  \allowBreak fis[ gis e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s2 s16 s2 cis2. e4 cis4. b4
}
tenorNotesAnt = \relative g {
  gis2. a2 s16 b2 a2. gis4 a4. gis4
}
bassNotesAnt = \relative c {
  e2.~ e2~ s16 e4 gis4 a2. e4~ e4.~ e4
}
