\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "M"
psalmtone = "4"
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
    No ser -- vant can o -- bey two mas -- ters: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you can -- not serve God and the love of mo -- ney at the same time.
}
sopNotesAnt = \relative e' {
  e4 f8 e d g g([ a] g4) g8--[ c] c[ b] b4
  \noBreak \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak b8
  \allowBreak c
  \allowBreak a[ c]
  \allowBreak b[ c]
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak g
  \allowBreak f--[g a]
  \allowBreak g
  \allowBreak b4
  \allowBreak a8
  \allowBreak a
  \allowBreak a
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  s2. e2 g4~ g2. s16 e2 f~ f~ f\breve*5/16 d2
}
tenorNotesAnt = \relative g {
  g4 a2 c2~ c4 d2. s16 c2~ c2~ c2~ c\breve*5/16~ c4 b
}
bassNotesAnt = \relative c {
  c2.~ c2 e4 g2. s16 a4 g f2 d2 f\breve*5/16 g2
}
