\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "M"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Wo -- man, great is your faith; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    what you ask, I give to you.
}
sopNotesAnt = \relative e' {
  gis4 gis fis8[ a] a gis fis4
  \hideNotes fis16 \unHideNotes  %so taht I can align the * better
  \allowBreak fis8[ a]
  \allowBreak a
  \allowBreak fis4
  \allowBreak a8
  \allowBreak a
  \allowBreak gis
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e1 fis4~ s16 fis4. e4.~ e2
}
tenorNotesAnt = \relative g {
  b2 cis4 b cis4~ s16 cis4.~ cis4. b2
}
bassNotesAnt = \relative c {
  e1 a4 s16 fis4. cis4. e2
}
