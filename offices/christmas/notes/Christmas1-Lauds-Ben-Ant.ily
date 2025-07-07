\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
antKeysig = \key d \minor
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  Glo -- ry to God in the high -- est,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and peace to his peo -- ple on earth,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  d8 f8 g a4 g8 f g4 g 
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a([ f] d4)
  \allowBreak c8
  \allowBreak d
  \allowBreak e
  \allowBreak f
  \allowBreak e
  \allowBreak d4 \bar "'"
  \allowBreak e8
  \allowBreak f[ e]
  \allowBreak d4
  \allowBreak d \bar "||"
}
altoNotesAnt = \relative c' {
  a\breve*7/16 c\breve*5/16 s16 c4( d4) s4 c4. a4. c4 a2
}
tenorNotesAnt = \relative g {
  f\breve*7/16 e\breve*5/16 s16 f4( a4~) a4 g4. f4. e4 g4 f4
}
bassNotesAnt = \relative c {
  d\breve*7/16 c\breve*5/16 s16 f2~ f4 c4. d4.~ d4~ d2
}
