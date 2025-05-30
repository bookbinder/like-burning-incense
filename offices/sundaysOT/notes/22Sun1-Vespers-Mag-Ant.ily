\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
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
  When you are in -- vi -- ted to a wed -- ding, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
  go to the low -- est place, so that the one who in -- vi -- ted you can say:
  Friend, go up high -- er. Then you will be ho -- nored in the eyes of all
  who are at ta -- ble with you.
}
sopNotesAnt = \relative e' {
  des8 des ees des ges4 ges8 ges8 bes bes[ aes] aes4
  \hideNotes aes16 \unHideNotes  %so taht I can align the * better
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak des4
  \allowBreak des8
  \allowBreak des
  \allowBreak ees[ des]
  \allowBreak ces
  \allowBreak des
  \allowBreak ees[ ges]
  \allowBreak ges
  \allowBreak ees
  \allowBreak ges
  \allowBreak aes4 \bar "'"
  \allowBreak aes8--([bes aes ces bes] aes4)
  \allowBreak ges8[ aes]
  \allowBreak bes4
  \allowBreak bes8[ aes]
  \allowBreak aes4
  \allowBreak r4 \bar "|"
  \allowBreak ges8
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees([ f] ges4)
  \allowBreak ges8
  \allowBreak f
  \allowBreak ees
  \allowBreak des8
  \allowBreak des
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 des\breve*5/16~ des2 s16 bes\breve*13/16 ces\breve*7/16 des4~ des
  ees\breve*7/16 des2~ des2. bes1~ bes4. ces4 des\breve*5/16 aes4.~ aes4
}
tenorNotesAnt = \relative g {
  aes2 ges\breve*5/16 f2 s16 ges\breve*7/16 aes\breve*6/16 ges\breve*7/16~
  ges4 f ges\breve*7/16~ ges2~ ges4 f2 ges1~ ges4. ges4~ ges\breve*5/16~
  ges4. f4
}
bassNotesAnt = \relative c {
  f2 bes,\breve*5/16 des2 s16 ees\breve*7/16 f\breve*6/16 ces\breve*7/16
  bes4 des ces\breve*7/16 bes4 ges des'2. ees1 des4. ces4
  bes\breve*5/16 des4.~ des4
}
