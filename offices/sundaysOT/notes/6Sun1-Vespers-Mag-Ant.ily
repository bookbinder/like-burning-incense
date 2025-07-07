\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "M"
psalmtone = "69"
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
    Bles -- sed are you who are poor, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for the king -- dom of God is yours.
    And bles -- sed are you who hun -- ger now; you shall be sa -- tis -- fied.
}
sopNotesAnt = \relative e' {
  e8 f e \bar "" e[ d] \bar "" g a \bar "" c4( b)
  \noBreak \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak a8
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak a[ g f]
  \allowBreak g
  \allowBreak a4( g) \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak f
  \allowBreak e
  \allowBreak d
  \allowBreak d[ e]
  \allowBreak d
  \allowBreak f[ g]
  \allowBreak a
  \allowBreak a4 \bar "'"
  \allowBreak g4
  \allowBreak g8
  \allowBreak g[ f]
  \allowBreak f
  \allowBreak e
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. \parenthesize c4 d2~ s16 d4 \parenthesize c2 d2~
  d~ d4~ d4. \break s4. s4. f4 e4. d4~ d c
}
tenorNotesAnt = \relative g {
  g4. a4 c g2 s16 a4 c2 a2
  b2~ b4 a4.~ a2. c4~ c4. a4~ a~ a
}
bassNotesAnt = \relative c {
  c4. f4 e g2 s16 f4 e2 f2
  g2~ g4 d4. f2.~ f4 c4. d4 a4~ a
}
%% update
