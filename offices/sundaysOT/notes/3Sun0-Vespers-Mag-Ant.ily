\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "M"
psalmtone = "41"
psalmtonestruct = "23"
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
  Je -- sus preached the Gos -- pel of the king -- dom  
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and cured those who were in need of heal -- ing.
}
sopNotesAnt = \relative e' {
  e4 e8 \bar "" f[ e] d \bar "" g[ a] g \bar "" a c \bar ""
  b[ a g] g4
  \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak a[ g f]
  \allowBreak a8
  \allowBreak a8
  \allowBreak g
  \allowBreak f
  \allowBreak g8[ a g]
  \allowBreak g
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative d' {
  s4. s4. s4. g4~ g4. s4. s16
  f\breve*7/16 e4 d4~ d c
}
tenorNotesAnt = \relative g {
  c4.~ c~ c~ c4 d4. b s16
  c\breve*7/16~ c4 a~ a2
}
bassNotesAnt = \relative c {
  c4. d e~ e4 g2. s16
  f\breve*7/16 c4 d a2
}
%% update
