\version "2.20.0"
%% \include "../../../lbi_defs.ily"


%%% maybe change tone 39 to fit this. change the first note and the passing notes in the first bar

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "B"
psalmtone = "73"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    The dis -- ci -- ples went out and preached re -- pent -- ance. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    They a -- noin -- ted ma -- ny sick peo -- ple with oil and healed them.
}
sopNotesAnt = \relative e' {
  e8 e f e d g4 g8 a[ c] c b[ a g] g4
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak a
  \allowBreak c4
  \allowBreak b8
  \allowBreak c
  \allowBreak a
  \allowBreak g([ a] g4)
  \allowBreak f8
  \allowBreak f[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s8 e4. f d\breve*7/16~ s16 d4.~ d4 e4~ e4. d\breve*5/16 b4 c4
}
tenorNotesAnt = \relative g {
  g4 a4. c a b\breve*7/16 s16 a4.~ a4~ a4~ a4.~ a\breve*5/16~ a4
}
bassNotesAnt = \relative c {
  c4~ c4.~ c f g\breve*7/16 s16 f4.~ f4 a,4 c4. d\breve*5/16 a2
}
