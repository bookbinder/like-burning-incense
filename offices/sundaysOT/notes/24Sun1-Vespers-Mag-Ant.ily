\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
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
    I say to you: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    there is great re -- joi -- cing a -- mong the an -- gels of God
    o -- ver one re -- pen -- tant sin -- ner.
}
sopNotesAnt = \relative e' {
  g4 c8[ b] c a4( g)
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak b[ c]
  \allowBreak d
  \allowBreak c4
  \allowBreak b8
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f([ g] a4)
  \allowBreak a8
  \allowBreak a
  \allowBreak a4( g) \bar "'"
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d[ a']
  \allowBreak b
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*11/16 s16 g'4. e2 d4. f\breve*6/16 d2. s4. d4.~ d2
}
tenorNotesAnt = \relative g {
  e\breve*11/16 s16 g4.~ g2~ g4. a\breve*6/16 b2. c4.~ c~ c4 b
}
bassNotesAnt = \relative c {
  c\breve*11/16 s16 g4. a2 b4. d\breve*6/16 g2. a4. f g2
}
