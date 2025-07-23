\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "6"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
  Be -- lieve me,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the king -- dom of God is at hand; I tell
  you sol -- emn -- ly, your Sa -- vior will not de -- lay his
  co -- ming.
}
sopNotesAnt = \relative e' {
  r8 a8 f[ g] g4 
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak f4 \bar ","
  \allowBreak f8
  \allowBreak f[ a]
  \allowBreak c
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak b4
  \allowBreak a8
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s16 s8 f4. e2 d4. f4. e4. f4.~ f2~ f2 d2
}
tenorNotesAnt = \relative g {
  c4~ c4~ c4.~ s16 c4.~ c2 a4. c2.~ c4.~ c2~ c2~ c4 b
}
bassNotesAnt = \relative c {
  f4 d e4. s16 f4. c2 d4. a'4. g4. f4. d2 f2 g2
}
