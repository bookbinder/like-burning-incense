\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "B"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    He has done all things well: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    he has made the deaf hear and the mute speak, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8 g a4 g8[ c] c c4( b)
  \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak b8
  \allowBreak c
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak b4
  \allowBreak a8
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak b4 \bar "'"
  \allowBreak a8
  \allowBreak b[ a]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 g'4. g2. s16 e4.~ e4 g e d~ d4. c4~ c b
}
tenorNotesAnt = \relative g {
  c\breve*7/16 d2. s16 c4.~ c4 d4 c b g4. e4 d2
}
bassNotesAnt = \relative c {
  e\breve*7/16 g2. s16 c4.~ c4 g2~ g4 g,4.~ g4 g2
}
