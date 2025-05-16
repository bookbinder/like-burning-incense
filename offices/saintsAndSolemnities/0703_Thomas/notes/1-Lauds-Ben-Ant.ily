\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "7"
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
  Be -- cause you have seen me, Tho -- mas,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have be -- lieved; bles -- sed are they who have not seen me
  and yet be -- lieve.
}
sopNotesAnt = \relative e' {
  r8 g8 c b c a[-- b c] c4 a8[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g4
  \allowBreak e8
  \allowBreak f
  \allowBreak f([ a] g4)
  \allowBreak r4 \bar "|"
  \allowBreak f4
  \allowBreak f8
  \allowBreak e
  \allowBreak d[ e]
  \allowBreak d
  \allowBreak c
  \allowBreak d[ f]
  \allowBreak f[ e d]
  \allowBreak d4
  \allowBreak c8
  \allowBreak \breathe
  \allowBreak d8[ a']
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 g'8~ g4. f4.~ f4 e2 s16 s2 d2. s2
  a\breve*12/16 c4. b4
}
tenorNotesAnt = \relative g {
  c4~ c4.~ c4. a4 c2~ s16 c2~ c4( b2) a2
  f\breve*12/16~ f4. d4
}
bassNotesAnt = \relative c {
  e4~ e4. f4.~ f4 c2 s16 e2 g2. d2~
  d\breve*12/16 f,4. g4
}
