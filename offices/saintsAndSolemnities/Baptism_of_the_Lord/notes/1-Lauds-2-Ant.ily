\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Dan_3_57-88,_56"
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
  Springs of wa -- ter were made ho -- ly
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  as Christ re -- vealed his glo -- ry to the world. Draw wa -- ter
  from the foun -- tain of the Sav -- ior, for Christ our God
  has hal -- lowed all cre -- a -- tion.
}
sopNotesAnt = \relative e' {
  \allowBreak cis4
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis[ e]
  \allowBreak fis[ gis]
  \allowBreak gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak a
  \allowBreak a4( gis)
  \allowBreak r4 \bar "|"
  \allowBreak gis8[ b]
  \allowBreak cis[ b gis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak a[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  
}
tenorNotesAnt = \relative g {
  
}
bassNotesAnt = \relative c {
  
}
