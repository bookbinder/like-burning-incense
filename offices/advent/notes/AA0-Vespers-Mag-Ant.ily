\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "12"
antKeysig = \key f \major
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
  See the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  co -- ming from a -- far; his splen -- dor fills the earth.
}
sopNotesAnt = \relative e' {
  d8[ f] f e([ f] g4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak g4( a) \bar ","
  \allowBreak a8
  \allowBreak a([ c d] c4)
  \allowBreak a8
  \allowBreak a
  \allowBreak g
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  s4. e2 s16 f2~ f4~ f4. e2. d4 c2
}
tenorNotesAnt = \relative g {
  a4. c2~ s16 c4 a bes( c4.) a2. bes4~ bes( a)
}
bassNotesAnt = \relative c {
  f4. c2 s16 f2~ f4~ f4. c2. bes4 f'2
}
