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
  Peace I leave with you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  al -- le -- lu -- ia; peace is my gift to you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 dis8 fis fis gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak e8
  \allowBreak e
  \allowBreak cis
  \allowBreak b4 \bar ","
  \allowBreak e4
  \allowBreak e8
  \allowBreak dis
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis4 \bar "'"
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. cis4 e4 s16 s4 s4. cis2~ cis4 b4. a4 gis4.
}
tenorNotesAnt = \relative g {
  b4. a4 b4 s16 gis4 fis4. gis2 e4~ e4. cis4 b4.
}
bassNotesAnt = \relative c {
  gis'4. a4 e2 s16 dis4. cis2 a4 e4.~ e4~ e4.
}
