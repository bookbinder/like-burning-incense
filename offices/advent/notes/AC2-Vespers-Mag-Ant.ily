\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  All ge -- ne -- ra -- tions will call me bles -- sed:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord has looked with fa -- vor on his low -- ly
  ser -- vant.  
}
sopNotesAnt = \relative e' {
  ees8[ f] ees[ aes] aes g aes f g f f[ ees] ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des[ ees]
  \allowBreak f
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s2 s4 s2 s8 s16 c4. des4. ees\breve*5/16 des4 bes2
}
tenorNotesAnt = \relative g {
  c\breve*10/16 bes\breve*5/16 s16 aes4.~ aes4.~ aes\breve*5/16~
  aes4~ aes g
}
bassNotesAnt = \relative c {
  aes'\breve*10/16 g\breve*5/16 s16 aes4. f4. c\breve*5/16
  des4 ees2
}
