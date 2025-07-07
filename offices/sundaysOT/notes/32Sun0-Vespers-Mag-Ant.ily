\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "M"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  At mid -- night a cry was heard: 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "} Be -- hold, the Bride -- groom
  comes, go out to meet him.
}
sopNotesAnt = \relative e' {
  r8 ees8 g[ aes] f4 ees8 f[ ees] des ees4
  \noBreak \hideNotes ees16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees8
  \allowBreak g([ aes] bes4)
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak g4 \bar "'"
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees4
  ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 c\breve*5/16 des4. s16 s4. ees4~ ees4.~ ees4.~ ees4
  des2 c4 bes
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*5/16~ aes4.~ aes4. s16 bes4 g4. c4. bes4~ bes2 aes4 g
}
bassNotesAnt = \relative c {
  g'4 aes\breve*5/16 des,4. c4. s16 ees4~ ees4.~ ees4.~ ees4 bes2 ees2
}
