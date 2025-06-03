\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "1"
antKeysig = \key c \major
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
  I am sen -- ding my an -- gel be -- fore me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to pre -- pare the way for my co -- ming.  
}
sopNotesAnt = \relative e' {
  g8 a c d c b c a a[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak a4
  \allowBreak g8
  \allowBreak f
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*8/16~ e2. s16 f4.~ f2 d2
}
tenorNotesAnt = \relative g {
  c\breve*8/16~ c2.~ s16 c4.~ c2~ c4 b
}
bassNotesAnt = \relative c {
  c'\breve*8/16 c,2. s16 f4. d2 g2
}
