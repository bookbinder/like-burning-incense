\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "77"
psalmtonestruct = "43"
psalmnum = ""
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
  Lift up your heads and see;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  your re -- demp -- tion is now at hand.
}
sopNotesAnt = \relative e' {
  gis4 fis8 e fis[ a] a gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s16 e4~ e4.~ e4.~ e4
}
tenorNotesAnt = \relative g {
  b2 a4. b2~ s16 b4. cis4. b4
}
bassNotesAnt = \relative c {
  e2~ e4.~ e2~ s16 e4.~ e4.~ e4
}
