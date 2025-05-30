\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "M"
psalmtone = "2"
psalmtonestruct = "43"
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
    Go in -- to my vine -- yard, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and I will pay you a jsut wage.
}
sopNotesAnt = \relative e' {
  c'4 b8 c a a[ g] g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak f([ a] c4)
  \allowBreak b8
  \allowBreak c
  \allowBreak b[ a g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  g'\breve*5/16 e\breve*7/16 s16 f2. d4.~ d4
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c\breve*7/16~ s16 c2.~ c4. b4
}
bassNotesAnt = \relative c {
  e\breve*5/16 c\breve*7/16 s16 d2. g4.~ g4
}
