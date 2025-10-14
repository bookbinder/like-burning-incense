\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_67"
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
  He took all our sins u -- pon him -- self
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and asked for -- give -- ness for our of -- fens -- es.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ a] g[ f] d d[ f] g a a g4 
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak a
  \allowBreak c4
  \allowBreak b8
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2 d4.~ \breve*5/16 g4. s16 e4. f2. d2
}
tenorNotesAnt = \relative g {
  c2 a4.~ \breve*5/16 c4.~ s16 c4.~ 2.~ 4 b
}
bassNotesAnt = \relative c {
  c2 d4. f\breve*5/16 e4. s16 c4. d2. g2
}
