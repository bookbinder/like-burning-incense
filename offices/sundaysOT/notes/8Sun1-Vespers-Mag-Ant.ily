\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
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
    A good tree can -- not bear bad fruit, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    nor a bad tree good fruit.
}
sopNotesAnt = \relative e' {
  r8 f8 f[ aes] bes4 bes8 aes[ bes] c([ aes] f4) aes8[-- g] g4
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak aes
  \allowBreak f[ ees c]
  \allowBreak c4
  \allowBreak g'8--[ f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 f4~ f4.~ f4~ f2 ees s16 des4 c4.~ c4~ c4~ c4
}
tenorNotesAnt = \relative g {
  aes2 des4.~ des4 c2 bes~ s16 bes4 g4.~ g4 bes aes
}
bassNotesAnt = \relative c {
  f2~ f4.~ f4 aes2 ees s16 bes4 c4. ees4~ ees4 f4
}
