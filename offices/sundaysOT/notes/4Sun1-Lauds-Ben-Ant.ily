\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "B"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ev -- ery -- one heard with a -- maze -- ment 
     \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    what Je -- sus taught, for he spoke with such au -- tho -- ri -- ty.
}
sopNotesAnt = \relative e' {
  aes8 aes aes \bar "" bes[ aes] ges aes \bar "" ces[-- bes aes] aes4
  aes8 \bar "" ges[ ees f] ees \bar "" ees4( des)
  \hideNotes e16 \unHideNotes   %so that I can align the * better
  \allowBreak des8
  \allowBreak ees
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak ees
  \allowBreak des
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  f4. ges2 ees2.~ ees4 ces aes2 s16
  s4 ces4. ees aes,2
}
tenorNotesAnt = \relative c' {
  des4.~ des2 ces2.~ ces4 ges f2 s16 f4
  ges4.~ ges~ ges4 f
}
bassNotesAnt = \relative c {
  des4. ges2 aes2. ces,2 des2 s16 f4
  ees4. ces des2
}
