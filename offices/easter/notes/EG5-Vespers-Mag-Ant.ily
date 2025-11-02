\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "38"
antKeysig = \key a \minor
psalmnum = "Magnificat"
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
  When the Spir -- it of truth comes,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he will teach you all truth and will pro -- claim
  to you the things to come, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 f g4 e8 f g[ a g e] e4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8[ g]
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak a
  \allowBreak c([ d] c4 g8)
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g([ a] g4)
  \allowBreak f8
  \allowBreak f4( e) \bar "'"
  \allowBreak g8
  \allowBreak g[ f]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e2.~ \breve*6/16 s16 r4. f4. g\breve*10/16
  f4.~ 4. d\breve*5/16 c d4~ 4 c
}
tenorNotesAnt = \relative g {
  g2. c\breve*6/16~ s16 c4.~ 4.~ \breve*10/16~
  4. 4.~ \breve*5/16~ a f4 a2
}
bassNotesAnt = \relative c {
  c2.~ \breve*6/16~ s16 c4. d4. e\breve*10/16
  f4.~ f~ \breve*5/16 a,~ 4~ 2
}
