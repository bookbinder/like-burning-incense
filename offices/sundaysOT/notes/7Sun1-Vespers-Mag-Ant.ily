\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "M"
psalmtone = "44"
psalmtonestruct = "32"
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
    Do not judge o -- thers, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and you will not be judged, for as you have judged them,
    so will God judge you.
}
sopNotesAnt = \relative e' {
  r8 a8 g[ a] \bar "" c[ b] \bar "" a4 \bar "" a
  \hideNotes a16 \unHideNotes  %so taht I can align the * better
  \allowBreak a8
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak g
  \allowBreak g
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak g
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak g[ e]
  \allowBreak e4( d) \bar "'"
  \allowBreak e8[ g]
  \allowBreak a
  \allowBreak g--
  \allowBreak g--
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2 g4 e4~ e4.~ s16 e4. d4 c2 d4
  e4.~ e4 s2 e4. d4 c
}
tenorNotesAnt = \relative c' {
  c2 d4~ d4 c4.~ s16 c4. a4~ a2 g4~
  g4. c4 b2 a4.~ a4~ a
}
bassNotesAnt = \relative a {
  a2 g4 a4~ a4. s16 c,4. d4 a2 b4
  c4.~ c4 g'2 c,4. d4 a
}
