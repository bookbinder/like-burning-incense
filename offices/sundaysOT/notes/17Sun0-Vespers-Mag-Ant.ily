\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "1"
psalmtonestruct = "33"
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
    The king -- dom of hea -- ven 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} is like a mer -- chant in search of fine
    pearls; when he found one of great va -- lue, he sold e -- very -- thing
    he had and bought it.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ a] g g f[ e d] d4
  \noBreak \hideNotes d16 \unHideNotes  %so taht I can align the * better
  \allowBreak f8
  \allowBreak e
  \allowBreak f
  \allowBreak g[ c]
  \allowBreak c
  \allowBreak b
  \allowBreak a[ b]
  \allowBreak c
  \allowBreak b--[ a]
  \allowBreak a4( g)
  \allowBreak r4 \bar "|"
  \allowBreak g8
  \allowBreak g
  \allowBreak e[ g]
  \allowBreak g4
  \allowBreak g8
  \allowBreak f[ e]
  \allowBreak d[ a']
  \allowBreak a4 \bar "'"
  \allowBreak g8
  \allowBreak a[ b]
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak b
  \allowBreak c
  \allowBreak a4
  \allowBreak b8
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  e2. d4.~ d\breve*5/16 s16
  c2~ c4. f4 d2. e\breve*7/16 d4~ d4 c4. f4 g\breve*5/16 f4. d2
}
tenorNotesAnt = \relative g {
  c2. a4.~ a\breve*5/16 s16
  g2 a4. c4 b2. c\breve*7/16 a4~ a~ a4.~ a4 g\breve*5/16 c4.~ c4 b
}
bassNotesAnt = \relative c {
  c2. d4. f\breve*5/16 s16
  e2 f4.~ f4 g2. c,\breve*7/16 d4 f~ f4. d4 e\breve*5/16 f4. g2
}
