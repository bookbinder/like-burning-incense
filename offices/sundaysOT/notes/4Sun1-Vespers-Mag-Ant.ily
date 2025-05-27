\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \major
antiphon = "M"
psalmtone = "10"
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
  They all mar -- veled at the words 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that came forth from the mouth of God.
}
sopNotesAnt = \relative e' {
  c4 f8[ bes] \bar "" a[ f] f4 f8 f \bar "" g[( a] g4)
  \hideNotes g16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak f[ d f]
  \allowBreak g4
  \allowBreak a8
  \allowBreak bes
  \allowBreak c[ d c]
  \allowBreak c
  \allowBreak f,4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2 s2 d\breve*8/16 s16 f2~ f~ f4
}
tenorNotesAnt = \relative g {
  a4 bes c a2 bes\breve*5/16 s16 a4. bes2~ bes a4    
}
bassNotesAnt = \relative c {
  f2~ f2. bes\breve*5/16 s16 d,4.~ d2 f2~ f4
}
