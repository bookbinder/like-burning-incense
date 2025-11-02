\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_137_1-6"
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
  Sing for us
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  one of Zi -- on's songs, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis cis,4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak b8
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis4. s2 s16 cis2. b4 gis2
}
tenorNotesAnt = \relative g {
  e4.~ 2 s16 fis2.~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  cis4.~ 2 s16 a2. b4 cis2
}
