\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "B"
psalmtone = "38"
psalmtonestruct = "32"
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
    Help us, O Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for we are trou -- bled; give the com -- mand, O God, and bring us peace.
}
sopNotesAnt = \relative e' {
  c'4 b8 a c4( b)
  \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak a8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak e4
  \allowBreak e \bar "'"
  \allowBreak c'4
  \allowBreak b8
  \allowBreak a
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak c4( b) \bar "'"
  \allowBreak a8
  \allowBreak g([ a] g4)
  \allowBreak g8
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative g' {
  g2~ g\breve*12/16 s16 e\breve*7/16 g\breve*5/16 f4 d4. c4
}
tenorNotesAnt = \relative g {
  c2 d\breve*5/16~ s16 d4. c2~ c\breve*7/16 d\breve*5/16~ d4 a4.~ a4
}
bassNotesAnt = \relative c {
  e2 g\breve*5/16 s16 b4. a2 g\breve*7/16~ g\breve*5/16 d4~ d4. a4
}
